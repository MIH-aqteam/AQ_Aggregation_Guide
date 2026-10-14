# 3 Data pre-processing prior to calculation of aggregations

Before any statistical aggregation is performed, raw measurement data (data submitted by the countries) undergo a series of pre-processing steps designed to ensure consistency, reliability, and compliance with methodological standards. These preparatory operations are critical to guarantee that aggregated results are based on data of sufficient quality, properly formatted and timely aligned.

The pre-processing pipeline includes the following key steps:

- **Outlier removal**, to discard implausible values that may distort statistical indicators.

- **Resolution of overlaps**, where multiple records exist for the same time interval.

- **Time zone adjustment:** converting timestamps to the declared time zone used for calculating statistics assigned to each air quality network by the country (data stored in UTC+1).

- **Exclusion or flagging of variable-length intervals**, which are not compatible with fixed-time aggregations.

- **Filtering based on validity and verification status**, to ensure that only suitable records are used, particularly in compliance-related calculations.

Each of these steps is further detailed in the following subsections.

## 3.1 Outlier Detection and Removal

As a first step in the data preparation process, all reported measurement values below **-50** are systematically classified as invalid, regardless of the validity flag provided by the reporting country. This threshold-based filter ensures the removal of clearly erroneous values that would otherwise compromise the reliability of subsequent statistical calculations.

This treatment affects not only the statistical indicators (e.g., mean, percentiles) but also the accompanying quality parameters such as data coverage, time coverage, and data capture. Outliers excluded in this step are therefore not considered in subsequent stage of data aggregation or compliance assessment.

## 3.2 Overlap Resolution

To ensure that each time interval within a time series is represented by a single, consistent measurement, a dedicated methodological approach is applied to resolve overlaps in reported data. This procedure addresses cases where multiple measurements are reported for overlapping time intervals by identifying and invalidating redundant or outdated records based on temporal and procedural criteria.

All measurements are first organised chronologically based on their start time. For each time interval, all available records for the same SPO are initially considered, and any overlapping intervals are identified. Overlaps are defined as cases where the start or end of a time interval lies within another, or when one interval is entirely nested within another.To resolve these overlaps, records are compared based on the **ResultTime** attribute (see Table 1), which indicates the time of generation or submission of the data. When overlapping records are detected:

- Only the most recently reported one is retained, based on the latest **ResultTime**.

- Older records are invalidated.

- If two overlapping records have the same **ResultTime**, both are invalidated to prevent ambiguity.

These rules apply solely based on temporal and procedural criteria, irrespective of whether the reported values are identical. This ensures that for each time interval, a single, unambiguous record is selected.This process is systematically applied throughout the dataset, ensuring temporal consistency by retaining a single, authoritative measurement for each time interval. It is designed to handle complex cases where one record may overlap with several others, always prioritising the most current submission. The result is a harmonised and traceable dataset that reflects the most up-to-date information available for subsequent statistical processing.

## 3.3 Handling of Variable Aggregation Types (var)

Measurement records reported with the aggregation type **var** are exclusively used for the calculation of the annual mean (P1Y) and are not considered for any other statistical indicators.

In many instances, the start and end timestamps of these records do not fall exactly on the hour and may include minutes or seconds (e.g., 12:17:10). To ensure temporal consistency across all records, the minimum time unit for aggregation is set to one hour. This implies that all time intervals must start and end on the hour (e.g., 08:00, 17:00).

To achieve this, a rounding procedure is applied to adjust the timestamps to the nearest appropriate hour. This procedure follows a pragmatic rule grounded in the data quality requirements defined by the Annex V, point C of Directive 2004/2881 (EU, 2024), which states that an hour can be considered valid if at least 75% of its measurements are available—that is, a minimum of 45 valid minutes.

This threshold forms the basis for rounding decisions: timestamps are adjusted to include only those hours where sufficient data coverage exists, ensuring consistency and alignment with regulatory standards.

The specific rounding thresholds and examples are detailed below.

:::{admonition} Example 1
:class: aura-example

To standardise the time intervals and ensure consistency in calculations, the following rounding criteria are applied to the start and end times of var records:

**Start Time Rounding**

- If the **minute** value is **≤ 15**, round **down** to the hour.

  - *Example: 08:15 → 08:00; 08:05 → 08:00*

- If the **minute** value is **\> 15**, round **up** to the next full hour.

  - *Example: 08:16 → 09:00; 08:50 → 09:00*

**End Time Rounding**

- If the **minute** value is **\< 45**, round **down** to the hour.

  - *Example: 17:30 → 17:00; 17:05 → 17:00*

- If the **minute** value is **≥ 45**, round **up** to the next full hour.

  - *Example: 17:45 → 18:00; 17:55 → 18:00*
:::

## 3.4 Time Zone Adjustment

To ensure temporal consistency across data reported from different countries and monitoring stations, all hourly data is stored on a common reference time (UTC+1). This harmonisation step is essential, particularly when dealing with hourly or sub-daily data, where discrepancies in time zones could significantly affect the accuracy of aggregations.

Although all measurement records are stored internally in UTC+1 format (as per the processing pipeline), the actual calculation of statistical aggregations is carried out in the time zone declared by data provider for the corresponding sampling point (via each network). This zone information is provided via country-specific metadata and must be considered to reflect the true temporal context of measurements.

The approach varies according to the temporal resolution (**AggType**) of the reported data:

- **Daily data (P1D):** No transformation is applied. These values are already considered aggregated at the day level and are assumed to be correctly aligned, as submitted by the reporting Member State.

- **Hourly and VAR data:** These data types require time correction, particularly for records originating from “VAR” sources. In these cases, the time shift between the reported local time zone and UTC+1 is computed and applied, ensuring proper alignment.

**Note:** For all statistics related to **AOT40**, no time zone adjustment is applied. In accordance with Directive (EU) 2024/2881, Annex I, Section 2.A, the calculation of AOT40 must be based strictly on Central European Time (UTC+1). Therefore, all hourly values used for AOT40-related aggregations are processed directly in UTC+1, regardless of the local time zone of the sampling point.

## 3.5 Application of Validity and Verification Flags

Each measurement is associated with two key quality indicators (see Table 2).:

- **Validity status**: Indicates whether the value is acceptable for use.

- **Verification status**: Indicates whether the value has undergone quality control checks, and its current verification state.

Only values with a **validity code of 1, 2, 3, or 4**{ref}`[7] <footnote-7>` are considered valid and are included in the calculation of statistics and related metrics such as data capture, time coverage, and data coverage. Values flagged as invalid (e.g. -1, -99) or lacking a validity flag are excluded.

The **verification flag** determines whether a value has been quality-assured and can be considered when performing data aggregation, particularly depending on the context.

- For **regulatory compliance assessments**, only **valid and verified** data (i.e. validity flags 1–4 and verification flag 1) must be used.

- For **non-regulatory assessments** (e.g., Up-to-date – UTD), aggregations may include **valid but unverified** data too (e.g. verification codes 1, 2, and 3), depending on the use case.
