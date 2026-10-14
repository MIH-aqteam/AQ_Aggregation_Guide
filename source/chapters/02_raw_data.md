# 2 Processing of raw data by EEA system

The EEA processes primary air quality measurement data submitted by countries to calculate the statistics described in this document. Reported data are stored and accessed through a system of Parquet files, which serve as the primary data source for all subsequent processing and aggregation.

## 2.1 Data Delivery and Storage Architecture

Primary data are delivered by reporting countries through two main channels:

- **E1a**: Officially validated data, submitted via the Central Data Repository (CDR).

- **UTD (****Up-To-Date)**: Near-real-time data, provided via File Transfer Protocol (FTP) or Sensor Observation Service (SOS) endpoints.

For each unique Sampling Point (SPO), the system stores:

- **One Parquet file for E1a data**: containing fully validated and verified records.

- **One Parquet file for UTD data**: containing preliminary data with varying levels of verification.

Files are organised by country and SPO unique identifier and are accessible through structured URLs.

**Example URL pattern**:

<u>E1a data:</u>

> [***https://eeadmz1batchservice02.blob.core.windows.net/airquality-p-e1a/\<country_code\>/\<SPO\>.parquet***](https://eeadmz1batchservice02.blob.core.windows.net/airquality-p-e1a/%3ccountry_code%3e/%3cSPO%3e.parquet)

<u>UTD data:</u>

> [***https://eeadmz1batchservice02.blob.core.windows.net/airquality-p/\<country_code\>/\<SPO\>.parquet***](https://eeadmz1batchservice02.blob.core.windows.net/airquality-p/%3ccountry_code%3e/%3cSPO%3e.parquet)

## 2.2 Structure of Parquet Files

Each Parquet file contains a complete time series for a given Sampling Point (SPO) and pollutant, including the metadata most relevant for compliance assessment, quality control and time series as reported by national authorities. The structure is standardised and follows a schema optimised for high-performance processing and interoperability. The following fields are defined:

Table 1: Structure of parquet files

| Field            | Description                                                                                                                                                                                                                                                                                      |
|------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Samplingpoint    | Unique local identifier for the sampling point, prefixed by the country code. Created by Member States and not subject to controlled vocabulary.                                                                                                                                                 |
| Pollutant        | Identifier of the pollutant measured. It follows the standard pollutant codes as per the EEA reporting schema.{ref}`[1] <footnote-1>`                                                                                                                                                                               |
| Start            | Start timestamp of the observation interval (format: yyyy-mm-dd HH:MM:SS).                                                                                                                                                                                                                       |
| End              | End timestamp of the observation interval (format: yyyy-mm-dd HH:MM:SS).                                                                                                                                                                                                                         |
| Value            | Numerical result of the measurement corresponding to the interval defined by Start and End.                                                                                                                                                                                                      |
| Unit             | Measurement unit associated with the value. Units are standardised (e.g. µg/m³, mg/m³, etc.).{ref}`[2] <footnote-2>`                                                                                                                                                                                                |
| AggType          | Aggregation type indicating the temporal granularity of the observation. Possible values include hour, day, or var (for variable intervals such as weekly or monthly). Find [here](https://dd.eionet.europa.eu/vocabulary/aq/primaryObservation) more detailed information on aggregation types. |
| Validity         | Validity flag indicating the data quality status. Refer to EEA definitions for accepted validity codes.{ref}`[3] <footnote-3>`                                                                                                                                                                                      |
| Verification     | Verification level indicating the extent of quality assurance applied. Usually ranges from level 1 to level 3.{ref}`[4] <footnote-4>`                                                                                                                                                                               |
| ResultTime       | Timestamp indicating when the file containing the observation was submitted.                                                                                                                                                                                                                     |
| DataCapture      | Percentage of time within the interval during which the instrument was operational or sampling.                                                                                                                                                                                                  |
| FkObservationLog | Internal reference used for traceability in the EEA system. This field is not relevant for end users.                                                                                                                                                                                            |

These fields provide the necessary metadata to support compliance assessment, time series aggregation, and quality control. The schema ensures consistency across countries and pollutant types, thereby enabling centralised and reproducible analysis workflows.

## 2.3 Storage of Key Attributes for Processing and Traceability

To ensure full traceability and enable robust statistical processing, the EEA system captures and stores a defined set of key attributes for each record. These elements are detailed (see Table 1) and are fully integrated in the Parquet schema outlined above. This section clarifies the role of each key attribute in supporting validation, temporal aggregation, and data provenance.

### 2.3.1 Sampling Point as Primary Identifier

The **Samplingpoint** field uniquely identifies the source (origin) of each measurement and links the observation to its associated metadata (e.g., station type, location, instrumentation). All other record attributes are interpreted in the context of this identifier.

### 2.3.2 Pollutant and Unit

The **Pollutant** and **Unit** fields ensure that each observation is correctly interpreted and processed. Pollutant codes follow the EEA reporting standards, and units are harmonised to allow comparison and aggregation.

### 2.3.3 Temporal Boundaries of Observations

Each measurement is associated with a **Start** and **End** timestamps that defines the observation period. For hourly data, all timestamps are converted and stored using the **<u>UTC+01</u>** time zone. For daily or var data, the **Start** and **End** timestamps are kept as originally reported.

The **ResultTime** field (timestamp) records when the observation was generated or last updated by the provider. It is used to ensure version control and avoid overwriting newer data with older submissions. The ResultTime is a timestamp provided by the data provider within their submission.

### 2.3.4 Validity and Verification Flags

Data quality is indicated through two fields:

- Validity: The validity flag is essential to correctly calculate any statistics and derived indicators like data capture, time coverage and data coverage.

- Verification: The verification flag indicates the level of quality control applied to the observations.

The following table summarises the validity and verification codes:

Table 2: Validity and verification status flags

| Category                | Number | Code                                                                         |
|-------------------------|--------|------------------------------------------------------------------------------|
| Validity status{ref}`[5] <footnote-5>`     | 1      | Valid                                                                        |
|                         | 2      | Valid below detection limit and the measurement value is given               |
|                         | 3      | Valid, but below detection limit and number replaced by 0.5\*detection limit |
|                         | 4      | Valid (Ozone only) using CCQM.O3.2019                                        |
|                         | -1     | Not valid                                                                    |
|                         | -99    | Not valid due to station maintenance or calibration                          |
| Verification status{ref}`[6] <footnote-6>` | 1      | Verified                                                                     |
|                         | 2      | Preliminary verified                                                         |
|                         | 3      | Not verified                                                                 |

Each value (measurement or observation) will have a validity flag and a verification flag.

The verification flag status for validated assessment datasets (Data flows E1a – measurements and E1b – modelling) must be 1 (verified) only when data has been fully verified and is ready for compliance reporting. The verification status for UTD datasets (Data flows E2a) may take any value from 1 to 3. 3 is typically used when transmitting hourly data directly from the monitoring network every hour, 2 when data has gone through intial qa/qc, and 1 when data has been fully verified and is final.
