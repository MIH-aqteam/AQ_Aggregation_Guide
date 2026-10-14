# 4 Calculation of base aggregations

The raw data reported by countries may have different temporal granularities, identified by the field AggType, such as *hour*, *day*, or *var*.

An intermediate step in the calculation of final statistics is the generation of base aggregations. Once the raw data have been preprocessed (see Chapter 3), these base aggregations are calculated and subsequently used as input for the computation of final statistics. The types of base aggregation include:

- Hour

- P1D (daily average)

- P8H-run (8-hour running mean)

- P8H-dmax (daily maximum 8-hour running mean)

- AOT40h

The calculation rules for each of these aggregations are described in the following sections.

## 4.1 Hour{ref}`[8] <footnote-8>`

When the AggType is "hour", no further aggregation is required. The base values used are the valid hourly data directly available in the Parquet files. These values must meet the validity and verification criteria described in Chapter 3 to be used in any subsequent calculation.

## 4.2 Daily Average (P1D)

The daily average or daily mean is the average of all valid hourly values for a day. Data which is originally reported as “day” will be considered directly as P1D without any manipulation{ref}`[9] <footnote-9>`.

The raw primary data are hourly values{ref}`[10] <footnote-10>`.

A daily or 24-hour average is calculated if **<u>at least 18 valid hourly values are available in the 24-hour period</u>** (75%{ref}`[11] <footnote-11>`) starting at the hour ending at 01:00 hours. If the minimum required proportion of valid data is not available, no valid daily or 24-hour average is produced for that day; instead, the corresponding entry is flagged as invalid (-1).

The resulting value is associated with the aggregation code [P1D](http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1D).

## 4.3 8-hour running mean (P8H-run)

The 8-hour running mean value is calculated for each hour as the average of the valid hourly values for that hour and the seven preceding hours, resulting in a continuously shifting 8-hour window. For instance, in Example 2 show in the box, the 8-hour running mean corresponding to hour 1 of a given day covers from hour 17 (starting hour) of the previous day to hour 1 (ending hour) of the current day. Similarly, the 8-hour running mean for hour 24 includes data from (starting) hour 16 to (ending) hour 24 of the same day.

:::{admonition} Example 2. Calculation of the 8-hour running mean (P8H-run)
:class: aura-example

The table below shows how the 8-hour averaging window shifts hour by hour and which hourly values are included in each case.

| Hour of day (dayₙ) | 8-hour averaging period       | Included hours                     |
|--------------------|-------------------------------|------------------------------------|
| 01:00              | 17:00 (dayₙ₋₁) – 01:00 (dayₙ) | 17, 18, 19, 20, 21, 22, 23, 01     |
| 08:00              | 01:00 – 08:00 (dayₙ)          | 01, 02, 03, 04, 05, 06, 07, 08     |
| 24:00              | 16:00 – 24:00 (dayₙ)          | 16, 17, 18, 19, 20, 21, 22, 23, 24 |
:::

Each aggregated value is stored together with its start and end time. Although the aggregation code P8H-run refers to the **hour-end**, both the starting and ending timestamps of the 8-hour window are recorded to ensure full traceability of the period used in the calculation.

An 8-hour running average concentration is calculated if **<u>at least 6 valid hourly values are available</u>** over the 8-hour averaging period (75%{ref}`[12] <footnote-12>`). If the data requirement is not fulfilled, no valid 8-hour average is produced for that hour; instead, the corresponding aggregation is flagged as invalid (-1).

The input data are hourly observations ([primary observation: hour](https://dd.eionet.europa.eu/vocabularyconcept/aq/primaryObservation/hour)), and the result is encoded with the code [P8H-run](https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P8H-run/view). This aggregation is calculated exclusively for ozone (O₃) and carbon monoxide (CO).

## 4.4 Daily maximum 8-hour running mean (P8H-dmax)

The daily maximum 8-hour running mean is obtained by identifying the highest valid value among all 8-hour running means computed during a day, considering the hour-end of each 8-hour averaging period as the reference time. As a prerequisite, the 8-hour running means must have been previously calculated for the day under analysis, as described in Chapter 4.3.

The calculation considers the 24 possible 8-hour periods within a day, and the daily maximum 8-hour running mean is derived only **<u>if at least 18 of them</u>** (i.e. 75%{ref}`[13] <footnote-13>`) are valid. If this threshold is not met, no valid daily maximum 8-hour running mean is produced; instead, the result is flagged as invalid (-1). The resulting aggregation is encoded as [P8H-dmax](http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P8H-dmax). This indicator is also calculated only for ozone (O₃) and carbon monoxide (CO).

## 4.5 AOT40h

The AOT40h (Accumulated Ozone exposure over a Threshold of 40 parts per billion, calculated on hourly values) is an intermediate aggregation used in the computation of the AOT40. It is based on valid hourly concentrations of ozone (O₃), and represents the hourly contribution to the AOT40 metric for each individual hour in the relevant time window.

It is calculated only during daytime hours — specifically, for each hour between 08:00 UTC+01 (StartTime \>= 08:00) and 20:00 UTC+01 (EndTime \<= 20:00) and within the vegetation period defined from April 1st to September 30th of the reference year.

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p><strong>Definitions and criteria (according to EU (2024), Anex I, section 2)</strong></p>
<p>The ‘Accumulated Ozone exposure over a Threshold of 40 parts per billion’ (AOT40), expressed in ‘(μg/m3) × hours’, means the sum of the difference between hourly concentrations greater than 80 μg/m3 (= 40 parts per billion) and 80 μg/m3 over a given period using only the 1-hour values measured between 8:00 and 20:00 Central European Time (CET) each day.</p>
</blockquote></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

For each of these hours, a positive contribution is considered only if the hourly ozone concentration exceeds 80 µg/m³ (equivalent to 40 ppb under standard conditions). In such cases, the amount exceeding the threshold (i.e. the difference between the measured concentration and 80 µg/m³) is recorded as the hourly contribution. If the hourly value is equal to or below the threshold, the contribution is set to zero.

:::{admonition} Example 3. Calculation of the AOT40h
:class: aura-example

The table below shows how the AOT40h values are obtained in each case.

| Date             | Hourly value | Validity flag | AOT40h | Validity flag AOT40h |
|------------------|--------------|---------------|--------|----------------------|
| 02/07/2025 09:00 | 125          | -1            | 0      | -1                   |
| 02/07/2025 10:00 | 75           | 1             | 0      | 1                    |
| 02/07/2025 11:00 | 95           | 1             | 15     | 1                    |
:::

Only validated hourly values that meet the criteria described in Chapter 3 are considered. If an hourly value is not valid, the AOT40h contribution for that hour is marked as invalid (-1) and excluded from subsequent accumulation steps. The aggregation is encoded with the code **AOT40h**.

The input data are hourly observations ([primary observation: hour](https://dd.eionet.europa.eu/vocabularyconcept/aq/primaryObservation/hour)), and the result is encoded with the code [AOT40h](https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/AOT40h/view?vocabularyFolder.workingCopy=false&facet=HTML+Representation). This aggregation is calculated exclusively for ozone (O₃).
