# 6 Calculation of basic exceedance information

Basic exceedance information is required to facilitate the assessment of environmental objective attainment and the evaluation of UTD data flows.

To determine exceedance situations, concentrations are compared with a threshold (known variously as limit values, target values, thresholds and margins above thresholds in the Directives). In this comparison, numerical rounding shall be the last step of any calculation, i.e., immediately before comparing the result with any threshold of any type and shall be done only once. The numerical rounding rules shall be based on the principle presented in Table 6.

Table 6: Number of decimals required as a function of the values of concentration

| Value x         | Number of decimals   |
|-----------------|----------------------|
| x ≥ 10          | integer (0 decimals) |
| 1 ≤ x \< 10     | 1 decimal{ref}`[26] <footnote-26>`       |
| 0.1 ≤ x \< 1    | 2 decimals{ref}`[27] <footnote-27>`      |
| 0.01 ≤ x \< 0.1 | 3 decimals           |

<div class="admonition aura-example">
<p class="admonition-title">Example 7. Exceedances considering rounding</p>
<div class="aura-example-body">
<ul>
<li><p>PM<sub>10</sub> daily value of 50.49 μg/m<sup>3</sup> would be rounded to 50 μg/m<sup>3</sup>. When comparing this value to the daily limit value of 50 μg/m<sup>3</sup> the result would be a no exceedance on that day.</p></li>
</ul><ul>
<li><p>PM<sub>10</sub> daily value of 50.50 μg/m<sup>3</sup> would be rounded to 51 μg/m<sup>3</sup>. When comparing this value to the daily limit value of 50 μg/m<sup>3</sup> the result would be an exceedance.</p></li>
</ul><ul>
<li><p>O<sub>3</sub> hourly value of 180.49 μg/m<sup>3</sup> would be rounded to 180 μg/m<sup>3</sup>. When comparing this value to the hourly information threshold of 180 μg/m<sup>3</sup> the result would be a no exceedance of the information threshold.</p></li>
</ul><ul>
<li><p>O<sub>3</sub> hourly value of 180.50 μg/m<sup>3</sup> would be rounded to 181 μg/m<sup>3</sup>. When comparing this value to the hourly information threshold of 180 μg/m<sup>3</sup> the result would be an exceedance of the information threshold.</p></li>
<li><p>BaP annual mean value of 1.05 ng/m³ would be rounded to 1.1 ng/m³. When comparing this value to the annual target value of 1.0 ng/m³ the result would be an exceedance.</p></li>
</ul>
</div>
</div>

<div class="admonition aura-example">
<p class="admonition-title">Example 8. Exceedances considering rounding (exceptional situations)</p>
<div class="aura-example-body">
<ul>
<li><p>The annual limit value for lead is 0.50 µg/m³. Although the general rule defined in Table 6 would imply rounding to two decimal places, for the purpose of comparing annual means to the limit value, concentrations are rounded to one decimal place. For example, a value of 0.536 µg/m³ is rounded to 0.5 µg/m³ and is therefore not considered an exceedance.</p></li>
<li><p>The daily limit value for CO is 4 mg/m³. Although the general rule defined in Table 6 would imply rounding to one decimal places, for the purpose of comparing annual means to the limit value, concentrations are rounded to integer. For example, a value of 4.2 mg/m³ is rounded to 4 mg/m³ and is therefore not considered an exceedance.</p></li>
</ul>
</div>
</div>

## 6.1 Exceedance of thresholds based on calendar year, winter mean, and maximum daily 8-h mean aggregated statistics

An exceedance of the calendar year (annual mean), winter mean (1 October to 31 March) or maximum daily 8-h mean environmental takes place when the rounded average of valid measurement values is higher than the threshold or target value.

<div class="admonition aura-example">
<p class="admonition-title">Example 9. Exceedances calendar year, winter mean and maximum daily 8-h mean</p>
<div class="aura-example-body">
<ul>
<li><p><em>Annual mean (NO₂)</em>: The annual mean concentration calculated from valid hourly values is 40.49 μg/m³, which rounds to 40 μg/m³. Compared to the annual limit value of 40 μg/m³, this represents no exceedance.</p></li>
<li><p><em>Annual mean (NO₂)</em>: The annual mean concentration is 40.50 μg/m³, which rounds to 41 μg/m³. Compared to the annual limit value of 40 μg/m³, this represents an exceedance.</p></li>
<li><p><em>Maximum daily 8-hour mean (O₃)</em>: The daily maximum 8-hour mean concentration is 120.5 μg/m³, which rounds to 121 μg/m³. Compared to the target value of 120 μg/m³, this represents an exceedance.</p></li>
<li><p><em>Winter mean (SO₂)</em>: The winter mean concentration is 20.44 μg/m³, which rounds to 20 μg/m³. Compared to the critical value of 20 μg/m³, this represents no exceedance.</p></li>
</ul>
</div>
</div>

## 6.2 Number of hours or days with exceedance

The number of hours or days with exceedance shall be calculated from the valid measurement values, counting the number of hours or days for which the rounded concentration is higher than the limit or threshold.

<div class="admonition aura-example">
<p class="admonition-title">Example 10. Number of hours or days with exceedance</p>
<div class="aura-example-body">
<ul>
<li><p><em>PM₁₀ daily limit value: Out of 365 daily average values, 42 days had concentrations above 50 μg/m³ after rounding. As the limit value allows up to 35 exceedance days per calendar year, this situation represents an exceedance of the annual limit value.</em></p></li>
</ul>
</div>
</div>

## 6.3 Number of three consecutive hours with exceedance

The number of three consecutive hours with exceedance shall be calculated from the valid measurement values, counting the number of three consecutive hours for which the rounded concentration in the three hours is higher than the limit or threshold.

<div class="admonition aura-example">
<p class="admonition-title">Example 11. Number of three consecutive hours with exceedance</p>
<div class="aura-example-body">
<ul>
<li><p><em>SO₂ alert threshold: The alert threshold is 500 μg/m³. During one episode, the hourly concentrations were 505 μg/m³, 511 μg/m³, and 507 μg/m³, all exceeding the threshold after rounding. This counts as one exceedance of three consecutive hours.</em></p></li>
</ul>
<p><em>If only two consecutive hours exceed the threshold (e.g., 502 μg/m³, 509 μg/m³, 495 μg/m³), this does not count as an exceedance of the three-hour criterion.</em></p>
</div>
</div>

## 6.4 Accessing aggregated statistics

Aggregated statistics generated using the rules presented in this section will be stored and made available via an aggregation and download service for all measurement data. Aggregate statistics are available via two services:

- Table viewers (<https://discomap.eea.europa.eu/App/AirQualityStatistics/>)

- Discodata (<https://discodata.eea.europa.eu/>) using SQL queries (see Example 5)

<div class="admonition aura-example">
<p class="admonition-title">Example 12</p>
<div class="aura-example-body">
<blockquote>
<p>Discodata access to annual means of PM<sub>10</sub> and PM<sub>2.5</sub> for all SamplingPoints in Spain between 2015 and 2021 (SQL query):</p>
</blockquote><blockquote>
<p>SELECT * FROM [AirQualityDataFlows].[latest].[AirQualityStatistics]</p>
<p>WHERE DataAggregationProcessId = 'P1Y'</p>
<p>AND AirPollutant IN ('PM10','PM2.5')</p>
<p>AND YearOfStatistics BETWEEN 2015 AND 2021</p>
<p>AND CountryCode = 'ES'</p>
</blockquote>
</div>
</div>
