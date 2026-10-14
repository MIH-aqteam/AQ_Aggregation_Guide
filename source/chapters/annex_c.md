# Annex C: Historical methods for calculation of data capture and time coverage from multi day sampler-based data types integrated over an averaging period

Because no data capture and time coverage per sample/observation are delivered to the old AirBase systems, it is assumed that the time coverage per sample/observation is 100%. If this sample/observation has a validity flag \>0, we also assume that the validity flag of all component values in the sample/observation also have validity flag \>0.

For the calculation of the data capture and time coverage we count the hours in the sampling period (end time sample – start time sample).

The **data capture** (DC) in a given averaging period (e.g., a year) is calculated as follows:

$$DC = \ \sum_{i}^{}{\frac{N_{valid,i}}{N_{i}} \cdot 100\%}$$

where *N<sub>valid,i</sub>* is the number of hours in the valid sample *i* (validity flag sample \> 0) and *N<sub>i</sub>* is the number of hours in sample *i*.

The **time coverage** (TC) is the percentage of measurement time in a given averaging period. Also, the time coverage is calculated on base of the number of hours in the sample periods. The time coverage for a given averaging period is calculated as follows:

$$TC = \frac{\Sigma_{i}N_{i}}{N_{averaging\_ period}} \cdot 100\%$$

where *N<sub>i</sub>* is the number of hours in sample *i* and *N<sub>averaging_period</sub>* is the total number of hours in the given averaging period (e.g., a year). When a sampling period falls over two calendar years, *N<sub>i</sub>* refers to the hours in the considered calendar year only.


[^28]: https://www.eionet.europa.eu/etcs/etc-he/products/etc-he-products/etc-he-reports/etc-he-report-2024-17-eeas-revision-of-the-european-air-quality-index-bands
