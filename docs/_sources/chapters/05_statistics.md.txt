# 5 Calculation of statistics

This section provides a description of compliance assessment and general statistics that are required by the e-Reporting system. The statistics or aggregations are parameters that are calculated from the raw and/or base aggregations presented in Chapter 4. All statistics shall be accompanied by an associated % data capture rate as specified in Chapter 7.

The following sections mathematically describe the statistics to be calculated as specified in Table 3.

Table 4 and Table 5 complement Table 3 by specifying:

- the base primary observation or aggregation each statistic is based on,

- the minimum valid base values to consider the aggregation valid and

- the vocabulary URL to get more information on the aggregation.

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p><strong>KEY NOTE</strong></p>
<p>Table 3 <em>details all the KEY aggregations necessary for checking compliance with the Ambient Air Quality Directive 2004/107/EC and 2008/50/EC, as well as with the recast Directive (EU) 2024/2881, together with the IPR Decision. The EXTRA statistics might be useful for Air Quality Assessment. All the statistics are to be calculated at SamplingPoint (i.e., station) level.</em></p>
</blockquote></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

Table 3: Key aggregations and extra statistics. See also Table 4 and Table 5

<div class="aura-table-scroll" role="region" aria-label="Table 3: horizontally scrollable aggregation table" tabindex="0">
<table class="aura-stat-table aura-stat-table-3">
<colgroup>
<col style="width: 6%" />
<col style="width: 5%" />
<col style="width: 11%" />
<col style="width: 10%" />
<col style="width: 11%" />
<col style="width: 11%" />
<col style="width: 13%" />
<col style="width: 10%" />
<col style="width: 11%" />
<col style="width: 6%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="2" rowspan="3"><strong>Pollutant [code] **</strong></th>
<th colspan="8"><strong>Aggregation based on</strong></th>
</tr>
<tr class="odd">
<th colspan="2"><p><strong>Hourly values</strong></p>
<p>(…/aq/primaryObservation/hour)</p></th>
<th colspan="2"><p><strong>Daily values</strong></p>
<p>(…/aq/primaryObservation/day)</p>
<p>(…/aq/aggregationprocess/P1D)</p></th>
<th colspan="2"><p><strong>Daily maximum 8-hour running mean</strong> (aggregated from hourly values)</p>
<p>(…/aq/aggregationprocess/P8H-dmax)</p></th>
<th colspan="2"><p><strong>Non hourly/daily</strong> (sample) data</p>
<p>(…/aq/primaryObservation/var)</p></th>
</tr>
<tr class="header">
<th><blockquote>
<p><strong>Description</strong></p>
</blockquote></th>
<th><strong>Notation</strong></th>
<th><blockquote>
<p><strong>Description</strong></p>
</blockquote></th>
<th><strong>Notation</strong></th>
<th><blockquote>
<p><strong>Description</strong></p>
</blockquote></th>
<th><strong>Notation</strong></th>
<th><blockquote>
<p><strong>Description</strong></p>
</blockquote></th>
<th><strong>Notation</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td rowspan="3"><p>SO<sub>2</sub></p>
<p><a class="aura-pollutant-code" href="http://dd.eionet.europa.eu/vocabulary/aq/pollutant/1">1</a></p></td>
<td><blockquote>
<p>KEY</p>
<p>(UNTIL 31/12/2029)</p>
</blockquote></td>
<td><ul>
<li><p>annual mean</p></li>
<li><p>hours with c&gt;350 µg/m<sup>3</sup> in 1 year</p></li>
<li><p>winter mean</p></li>
<li><p>periods of 3 consecutive hours c&gt;500 µg/m<sup>3</sup> in 1 year</p></li>
</ul></td>
<td><p><strong>P1Y</strong></p>
<p><strong>P1Y-hrsAbove350</strong></p>
<p><strong>winter-avg</strong></p>
<p><strong>P1Y-3hAbove500</strong></p></td>
<td><ul>
<li><p>annual mean*</p></li>
<li><p>days with c&gt;125 μg/m<sup>3</sup> in 1y</p></li>
<li><p>winter mean *</p></li>
</ul></td>
<td><p><strong>P1Y</strong></p>
<p><strong>P1Y-daysAbove125</strong></p>
<p><strong>winter-avg</strong></p></td>
<td></td>
<td></td>
<td><ul>
<li><p>annual mean weighted average</p></li>
</ul></td>
<td><strong>P1Y</strong></td>
</tr>
<tr class="even">
<td><blockquote>
<p>KEY</p>
<p>(FROM 01/01/2030)</p>
</blockquote></td>
<td><ul>
<li><p>annual mean</p></li>
<li><p>hours with c&gt;350 µg/m<sup>3</sup> in 1 year</p></li>
<li><p>winter mean</p></li>
<li><p>periods of 3 consecutive hours c&gt;350 µg/m<sup>3</sup> in 1 year</p></li>
<li><p>hours with c&gt;275 µg/m<sup>3</sup> in 1 year</p></li>
</ul></td>
<td><p><strong>P1Y</strong></p>
<p><strong>P1Y-hrsAbove350</strong></p>
<p><strong>winter-avg</strong></p>
<p><strong>P1Y-3hAbove350</strong></p>
<p><strong>P1Y-hrsAbove275</strong></p></td>
<td><ul>
<li><p>annual mean*</p></li>
<li><p>days with c&gt;50 μg/m<sup>3</sup> in 1y</p></li>
<li><p>winter mean *</p></li>
</ul></td>
<td><p><strong>P1Y</strong></p>
<p><strong>P1Y-daysAbove50</strong></p>
<p><strong>winter-avg</strong></p></td>
<td></td>
<td></td>
<td><ul>
<li><p>annual mean weighted average</p></li>
</ul></td>
<td><strong>P1Y</strong></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>EXTRA</p>
</blockquote></td>
<td><ul>
<li><p>daily mean</p></li>
<li><p>hours with c&gt;350 µg/m<sup>3</sup> in 1 month</p></li>
<li><p>25<sup>th</sup> highest hourly value</p></li>
<li><p>99.73 percentile</p></li>
<li><p>99.79 percentile</p></li>
<li><p>50 percentile</p></li>
<li><p>hourly maximum</p></li>
<li><p>hourly minimum</p></li>
</ul></td>
<td><p><strong>P1D</strong></p>
<p><strong>P1M-hrsAbove350</strong></p>
<p><strong>P1Y-hr-max25</strong></p>
<p><strong>P1Y-hr-max-per99.73</strong></p>
<p><strong>P1Y-hr-max-per99.97</strong></p>
<p><strong>P1Y-hr-per50</strong></p>
<p><strong>P1Y-hr-max</strong></p>
<p><strong>P1Y-hr-min</strong></p></td>
<td><ul>
<li><p>4<sup>th</sup> highest daily value</p></li>
<li><p>99.18 percentile{ref}`[14] <footnote-14>`</p></li>
<li><p>99 percentile</p></li>
<li><p>95.07 percentile</p></li>
<li><p>50 percentile</p></li>
<li><p>daily maximum</p></li>
<li><p>daily minimum</p></li>
</ul></td>
<td><p><strong>P1Y-day-max4</strong></p>
<p><strong>P1Y-day-max-per99.18</strong><a href="#fn1" class="footnote-ref" id="fnref1" role="doc-noteref"><sup>1</sup></a></p>
<p><strong>P1Y-P1D-per99</strong></p>
<p><strong>P1Y-P1D-per95.07</strong></p>
<p><strong>P1Y-day-per50</strong></p>
<p><strong>P1Y-day-max</strong></p>
<p><strong>P1Y-day-min</strong></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td rowspan="3"><p>NO<sub>2</sub></p>
<p><a class="aura-pollutant-code" href="http://dd.eionet.europa.eu/vocabulary/aq/pollutant/8">8</a></p></td>
<td><blockquote>
<p>KEY</p>
<p>(UNTIL 31/12/2029)</p>
</blockquote></td>
<td><ul>
<li><p>annual mean</p></li>
</ul>
<ul>
<li><p>hours with c&gt;200 μg/m<sup>3</sup></p></li>
<li><p>periods 3 consecutive hours c&gt;400 μg/m<sup>3</sup></p></li>
</ul></td>
<td><p><strong>P1Y</strong></p>
<p><strong>P1Y-hrsAbove200</strong></p>
<p><strong>P1Y-3hAbove400</strong></p></td>
<td><ul>
<li><p>annual mean*</p></li>
</ul></td>
<td><strong>P1Y</strong></td>
<td></td>
<td></td>
<td><ul>
<li><p>annual mean weighted average</p></li>
</ul></td>
<td><strong>P1Y</strong></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>KEY</p>
<p>(FROM 01/01/2030)</p>
</blockquote></td>
<td><ul>
<li><p>annual mean</p></li>
<li><p>hours with c&gt;150 µg/m<sup>3</sup></p></li>
</ul>
<ul>
<li><p>hours with c&gt;200 μg/m<sup>3</sup></p></li>
<li><p>periods 3 consecutive hours c&gt;200 μg/m<sup>3</sup></p></li>
</ul></td>
<td><p><strong>P1Y</strong></p>
<p><strong>P1Y-hrsAbove150</strong></p>
<p><strong>P1Y-hrsAbove200</strong></p>
<p><strong>P1Y-3hAbove200</strong></p></td>
<td><ul>
<li><p>annual mean*</p></li>
<li><p>days with c&gt;50 μg/m<sup>3</sup> in 1y</p></li>
</ul></td>
<td><p><strong>P1Y</strong></p>
<p><strong>P1Y-daysAbove50</strong></p></td>
<td></td>
<td></td>
<td><ul>
<li><p>annual mean weighted average</p></li>
</ul></td>
<td><strong>P1Y</strong></td>
</tr>
<tr class="even">
<td><blockquote>
<p>EXTRA</p>
</blockquote></td>
<td><ul>
<li><p>daily mean</p></li>
<li><p>day hour max</p></li>
<li><p>hours with c&gt;200 μg/m<sup>3</sup> in 1 month</p></li>
<li><p>19<sup>th</sup> highest hourly value</p></li>
<li><p>99.79 percentile</p></li>
<li><p>99.97 percentile</p></li>
<li><p>hours c&gt;400 μg/m<sup>3</sup></p></li>
</ul>
<ul>
<li><p>50 percentile</p></li>
<li><p>hourly maximum</p></li>
<li><p>hourly minimum</p></li>
<li><p>monthly mean</p></li>
<li><p>3-year mean</p></li>
</ul></td>
<td><p><strong>P1D</strong></p>
<p><strong>P1D-hr-max</strong></p>
<p><strong>P1M-hrsAbove200</strong></p>
<p><strong>P1Y-hr-max19</strong></p>
<p><strong>P1Y-hr-max-per99.79</strong></p>
<p><strong>P1Y-hr-max-per99.97</strong></p>
<p><strong>P1Y-hrsAbove400</strong></p>
<p><strong>P1Y- hr-per50</strong></p>
<p><strong>P1Y-hr-max</strong></p>
<p><strong>P1Y-hr-min</strong></p>
<p><strong>P1M</strong></p>
<p><strong>P3Y</strong></p></td>
<td><ul>
<li><p>99 percentile</p></li>
<li><p>95.07 percentile</p></li>
<li><p>50 percentile</p></li>
<li><p>daily maximum</p></li>
<li><p>daily minimum</p></li>
</ul></td>
<td><p><strong>P1Y-P1D-per99</strong></p>
<p><strong>P1Y-P1D-per95.07</strong></p>
<p><strong>P1Y-day-per50</strong></p>
<p><strong>P1Y-day-max</strong></p>
<p><strong>P1Y-day-min</strong></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td rowspan="2"><p>NO<sub>x</sub></p>
<p><a class="aura-pollutant-code" href="http://dd.eionet.europa.eu/vocabulary/aq/pollutant/9">9</a></p></td>
<td><blockquote>
<p>KEY</p>
</blockquote></td>
<td><ul>
<li><p>annual mean</p></li>
</ul></td>
<td><strong>P1Y</strong></td>
<td><ul>
<li><p>annual mean*</p></li>
</ul></td>
<td><strong>P1Y</strong></td>
<td></td>
<td></td>
<td><ul>
<li><p>annual mean weighted average</p></li>
</ul></td>
<td><strong>P1Y</strong></td>
</tr>
<tr class="even">
<td><blockquote>
<p>EXTRA</p>
</blockquote></td>
<td><ul>
<li><p>daily mean</p></li>
<li><p>50 percentile</p></li>
<li><p>hourly maximum</p></li>
<li><p>hourly minimum</p></li>
<li><p>monthly mean</p></li>
<li><p>3-year mean</p></li>
</ul></td>
<td><p><strong>P1D</strong></p>
<p><strong>P1Y- hr-per50</strong></p>
<p><strong>P1Y-hr-max</strong></p>
<p><strong>P1Y-hr-min</strong></p>
<p><strong>P1M</strong></p>
<p><strong>P3Y</strong></p></td>
<td><ul>
<li><p>50 percentile</p></li>
<li><p>daily maximum</p></li>
<li><p>daily minimum</p></li>
</ul></td>
<td><p><strong>P1Y-day-per50</strong></p>
<p><strong>P1Y-day-max</strong></p>
<p><strong>P1Y-day-min</strong></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td rowspan="3"><p>O<sub>3</sub></p>
<p><a class="aura-pollutant-code" href="http://dd.eionet.europa.eu/vocabulary/aq/pollutant/7">7</a></p></td>
<td><blockquote>
<p>KEY</p>
<p>(UNTIL 31/12/2029)</p>
</blockquote></td>
<td><ul>
<li><p>hours with c&gt;180 μg/m<sup>3</sup> in 1 year</p></li>
<li><p>hours with c&gt;240 μg/m<sup>3</sup> in 1 year</p></li>
<li><p>AOT40c</p></li>
<li><p>AOT40c averaged over 5y</p></li>
</ul></td>
<td><p><strong>P1Y-hrsAbove180</strong></p>
<p><strong>P1Y-hrsAbove240</strong></p>
<p><strong>AOT40c</strong></p>
<p><strong>AOT40c-P5Y</strong></p></td>
<td></td>
<td></td>
<td><ul>
<li><p>days with dmax&gt;120 µg/m<sup>3</sup> in 1 year</p></li>
<li><p>days with dmax&gt;120 μg/m<sup>3</sup> in 3 years</p></li>
</ul></td>
<td><p><strong>P1Y-dmaxAbove120</strong></p>
<p><strong>P3Y-dmaxAbove120</strong></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>KEY</p>
<p>(FROM 01/01/2030)</p>
</blockquote></td>
<td><ul>
<li><p>hours with c&gt;180 μg/m<sup>3</sup> in 1 year</p></li>
<li><p>hours with c&gt;240 μg/m<sup>3</sup> in 1 year</p></li>
<li><p>AOT40c</p></li>
<li><p>AOT40c averaged over 5y</p></li>
</ul></td>
<td><p><strong>P1Y-hrsAbove180</strong></p>
<p><strong>P1Y-hrsAbove240</strong></p>
<p><strong>AOT40c</strong></p>
<p><strong>AOT40c-P5Y</strong></p></td>
<td></td>
<td></td>
<td><ul>
<li><p>days with dmax&gt;120 μg/m<sup>3</sup> in 3 year</p></li>
<li><p>days with dmax&gt;100 μg/m<sup>3</sup> in 1 year</p></li>
</ul></td>
<td><p><strong>P3Y-dmaxAbove120</strong></p>
<p><strong>P1Y-dmaxAbove100</strong></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>EXTRA</p>
</blockquote></td>
<td><ul>
<li><p>daily mean</p></li>
<li><p>hours with c&gt;180 μg/m<sup>3</sup> in 1 day</p></li>
<li><p>hours with c&gt;240 μg/m<sup>3</sup> in 1 day</p></li>
<li><p>monthly mean</p></li>
<li><p>hours with c&gt;180 μg/m<sup>3</sup> in 1 month</p></li>
<li><p>hours with c&gt;240 μg/m<sup>3</sup> in 1 month</p></li>
<li><p>AOT40h</p></li>
<li><p>AOT40 forest protection</p></li>
<li><p>AOT40cmeasured</p></li>
<li><p>AOT40fmeasured</p></li>
<li><p>running 8h mean</p></li>
<li><p>maximum daily 8h mean</p></li>
<li><p>days with dmax&gt;100 μg/m<sup>3</sup> in 1 month</p></li>
<li><p>days with dmax&gt;120 μg/m<sup>3</sup> in 1 month</p></li>
<li><p>50 percentile</p></li>
<li><p>annual mean</p></li>
<li><p>hourly maximum</p></li>
<li><p>hourly minimum</p></li>
<li><p>summer average</p></li>
<li><p>SOMO35</p></li>
<li><p>SOMO10</p></li>
<li><p>6-month mean</p></li>
<li><p>3-year mean</p></li>
</ul></td>
<td><p><strong>P1D</strong></p>
<p><strong>P1D-hrsAbove180</strong></p>
<p><strong>P1D-hrsAbove240</strong></p>
<p><strong>P1M</strong></p>
<p><strong>P1M-hrsAbove180</strong></p>
<p><strong>P1M-hrsAbove240</strong></p>
<p><strong>AOT40h</strong></p>
<p><strong>AOT40f</strong></p>
<p><strong>AOT40cmeasured</strong></p>
<p><strong>AOT40fmeasured</strong></p>
<p><strong>P8H-run</strong></p>
<p><strong>P8H-dmax</strong></p>
<p><strong>P1M-dmaxAbove100</strong></p>
<p><strong>P1M-dmaxAbove120</strong></p>
<p><strong>P1Y-hr-per50</strong></p>
<p><strong>P1Y</strong></p>
<p><strong>P1Y-hr-max</strong></p>
<p><strong>P1Y-hr-min</strong></p>
<p><strong>summer-avg</strong></p>
<p><strong>SOMO35</strong></p>
<p><strong>SOMO10</strong></p>
<p><strong>P6M</strong></p>
<p><strong>P3Y</strong></p></td>
<td><ul>
<li><p>annual mean*</p></li>
<li><p>50 percentile</p></li>
<li><p>99 percentile</p></li>
<li><p>daily maximum</p></li>
<li><p>daily minimum</p></li>
</ul></td>
<td><p><strong>P1Y</strong></p>
<p><strong>P1Y-day-per50</strong></p>
<p><strong>P1Y-P1D-per99</strong></p>
<p><strong>P1Y-day-max</strong></p>
<p><strong>P1Y-day-min</strong></p></td>
<td><ul>
<li><p>Maximum daily 8-hour max in a year</p></li>
<li><p>26<sup>th</sup> highest 8h day max</p></li>
<li><p>93.15 percentile (max26)</p></li>
<li><p>95.07 perdentile</p></li>
<li><p>99 percentile</p></li>
<li><p>day max average over 1y</p></li>
<li><p>P8H-dmax average over 6-months</p></li>
<li><p>annual max of P6M-P8H-dmax (peak season)</p></li>
</ul></td>
<td><p><strong>P1Y-dx-max</strong></p>
<p><strong>P1Y-dx-max26</strong></p>
<p><strong>P1Y-dmax-per93.15</strong></p>
<p><strong>P1Y-dmax-per95.07</strong></p>
<p><strong>P1Y-dmax-per99</strong></p>
<p><strong>P1Y-dx-avg</strong></p>
<p><strong>P6M-P8H-dmax</strong></p>
<p><strong>P1Y-maxP6M-P8H-dmax</strong></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td rowspan="3"><p>CO</p>
<p><a class="aura-pollutant-code" href="http://dd.eionet.europa.eu/vocabulary/aq/pollutant/10">10</a></p></td>
<td><blockquote>
<p>KEY</p>
<p>(UNTIL 31/12/2029)</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><ul>
<li><p>days with P8H-dmax&gt;10 mg/m<sup>3</sup></p></li>
</ul></td>
<td><strong>P1Y-8hdmxAbove10</strong></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>KEY</p>
<p>(FROM 01/01/2030)</p>
</blockquote></td>
<td></td>
<td></td>
<td><ul>
<li><p>days with c&gt;4 mg/m<sup>3</sup> in 1y</p></li>
</ul></td>
<td><strong>P1Y-daysAbove4</strong></td>
<td><ul>
<li><p>days with P8H-dmax&gt;10 mg/m<sup>3</sup></p></li>
</ul></td>
<td><strong>P1Y-8hdmxAbove10</strong></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>EXTRA</p>
</blockquote></td>
<td><ul>
<li><p>daily mean</p></li>
<li><p>annual mean</p></li>
<li><p>monthly mean</p></li>
<li><p>running 8h mean</p></li>
<li><p>maximum daily 8h mean</p></li>
<li><p>50 percentile</p></li>
<li><p>hourly maximum</p></li>
<li><p>hourly minimum</p></li>
<li><p>3-year mean</p></li>
</ul></td>
<td><p><strong>P1D</strong></p>
<p><strong>P1Y</strong></p>
<p><strong>P1M</strong></p>
<p><strong>P8H-run</strong></p>
<p><strong>P8H-dmax</strong></p>
<p><strong>P1Y- hr-per50</strong></p>
<p><strong>P1Y-hr-max</strong></p>
<p><strong>P1Y-hr-min</strong></p>
<p><strong>P3Y</strong></p></td>
<td><ul>
<li><p>annual mean*</p></li>
<li><p>50 percentile</p></li>
<li><p>99 percentile</p></li>
<li><p>95.07 percentile</p></li>
<li><p>daily maximum</p></li>
<li><p>daily minimum</p></li>
</ul></td>
<td><p><strong>P1Y</strong></p>
<p><strong>P1Y-day-per50</strong></p>
<p><strong>P1Y-P1D-per99</strong></p>
<p><strong>P1Y-P1D-per95.07</strong></p>
<p><strong>P1Y-day-max</strong></p>
<p><strong>P1Y-day-min</strong></p></td>
<td><ul>
<li><p>day max average over 1y</p></li>
<li><p>Maximum daily 8-hour max over 1y</p></li>
</ul></td>
<td><p><strong>P1Y-dx-avg</strong></p>
<p><strong>P1Y-dx-max</strong></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td rowspan="3"><p>PM<sub>10</sub></p>
<p><a class="aura-pollutant-code" href="http://dd.eionet.europa.eu/vocabulary/aq/pollutant/5">5</a></p></td>
<td><blockquote>
<p>KEY</p>
<p>(UNTIL 31/12/2029)</p>
</blockquote></td>
<td><ul>
<li><p>annual mean</p></li>
</ul></td>
<td><strong>P1Y</strong></td>
<td><ul>
<li><p>annual mean*</p></li>
<li><p>days with c&gt;50 µg/m<sup>3</sup></p></li>
<li><p>90.4 percentile</p></li>
</ul></td>
<td><p><strong>P1Y</strong></p>
<p><strong>P1Y-daysAbove50</strong></p>
<p><strong>P1Y-P1D-per90.4</strong></p></td>
<td></td>
<td></td>
<td><ul>
<li><p>annual mean weighted average</p></li>
</ul></td>
<td><strong>P1Y</strong></td>
</tr>
<tr class="even">
<td><blockquote>
<p>KEY</p>
<p>(FROM 01/01/2030)</p>
</blockquote></td>
<td><ul>
<li><p>annual mean</p></li>
</ul></td>
<td><strong>P1Y</strong></td>
<td><ul>
<li><p>annual mean*</p></li>
<li><p>days with c&gt;45 µg/m<sup>3</sup></p></li>
<li><p>days with c&gt;90 µg/m<sup>3</sup></p></li>
<li><p>periods 3 consecutive days c&gt;90 µg/m<sup>3</sup></p></li>
</ul></td>
<td><p><strong>P1Y</strong></p>
<p><strong>P1Y-daysAbove45</strong></p>
<p><strong>P1Y-daysAbove90</strong></p>
<p><strong>P1Y-3daysAbove90</strong></p></td>
<td></td>
<td></td>
<td><ul>
<li><p>annual mean weighted average</p></li>
</ul></td>
<td><blockquote>
<p><strong>P1Y</strong></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>EXTRA</p>
</blockquote></td>
<td><ul>
<li><p>daily mean</p></li>
<li><p>50 percentile</p></li>
<li><p>hourly maximum</p></li>
<li><p>hourly minimum</p></li>
<li><p>monthly mean</p></li>
<li><p>3-year mean</p></li>
</ul></td>
<td><p><strong>P1D</strong></p>
<p><strong>P1Y- hr-per50</strong></p>
<p><strong>P1Y-hr-max</strong></p>
<p><strong>P1Y-hr-min</strong></p>
<p><strong>P1M</strong></p>
<p><strong>P3Y</strong></p></td>
<td><ul>
<li><p>90.41 percentile</p></li>
<li><p>99 percentile</p></li>
<li><p>95.07 percentile</p></li>
<li><p>36<sup>th</sup> highest daily value</p></li>
<li><p>50<sup>th</sup> percentile</p></li>
<li><p>daily maximum</p></li>
<li><p>daily minimum</p></li>
</ul></td>
<td><p><strong>P1Y-P1D-per90.41</strong></p>
<p><strong>P1Y-P1D-per99</strong></p>
<p><strong>P1Y-P1D-per95.07</strong></p>
<p><strong>P1Y-day-max36</strong></p>
<p><strong>P1Y-day-per50</strong></p>
<p><strong>P1Y-day-max</strong></p>
<p><strong>P1Y-day-min</strong></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td rowspan="3"><p>PM<sub>2.5</sub></p>
<p><a class="aura-pollutant-code" href="http://dd.eionet.europa.eu/vocabulary/aq/pollutant/6001">6001</a></p></td>
<td><blockquote>
<p>KEY</p>
<p>(UNTIL 31/12/2029)</p>
</blockquote></td>
<td><ul>
<li><p>annual mean</p></li>
</ul></td>
<td><strong>P1Y</strong></td>
<td><ul>
<li><p>annual mean*</p></li>
</ul></td>
<td><strong>P1Y</strong></td>
<td></td>
<td></td>
<td><ul>
<li><p>annual mean weighted average</p></li>
</ul></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>KEY</p>
<p>(FROM 01/01/2030)</p>
</blockquote></td>
<td><ul>
<li><p>annual mean</p></li>
</ul></td>
<td><strong>P1Y</strong></td>
<td><ul>
<li><p>annual mean*</p></li>
<li><p>days with c&gt;25 µg/m<sup>3</sup></p></li>
<li><p>days with c&gt;50 µg/m<sup>3</sup></p></li>
<li><p>periods 3 consecutive days c&gt;50 µg/m<sup>3</sup></p></li>
</ul></td>
<td><p><strong>P1Y</strong></p>
<p><strong>P1Y-daysAbove25</strong></p>
<p><strong>P1Y-daysAbove50</strong></p>
<p><strong>P1Y-3daysAbove50</strong></p></td>
<td></td>
<td></td>
<td><ul>
<li><p>annual mean weighted average</p></li>
</ul></td>
<td><strong>P1Y</strong></td>
</tr>
<tr class="even">
<td><blockquote>
<p>EXTRA</p>
</blockquote></td>
<td><ul>
<li><p>daily mean</p></li>
<li><p>50 percentile</p></li>
<li><p>hourly maximum</p></li>
<li><p>hourly minimum</p></li>
<li><p>monthly mean</p></li>
<li><p>3-year mean</p></li>
</ul></td>
<td><p><strong>P1D</strong></p>
<p><strong>P1Y- hr-per50</strong></p>
<p><strong>P1Y-hr-max</strong></p>
<p><strong>P1Y-hr-min</strong></p>
<p><strong>P1M</strong></p>
<p><strong>P3Y</strong></p></td>
<td><ul>
<li><p>99 percentile</p></li>
<li><p>50 percentile</p></li>
<li><p>95.07 percentile</p></li>
<li><p>daily maximum</p></li>
<li><p>daily minimum</p></li>
</ul></td>
<td><p><strong>P1Y-P1D-per99</strong></p>
<p><strong>P1Y-day-per50</strong></p>
<p><strong>P1Y-P1D-per95.07</strong></p>
<p><strong>P1Y-day-max</strong></p>
<p><strong>P1Y-day-min</strong></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td rowspan="2"><p>Benzene (C<sub>6</sub>H<sub>6</sub>)</p>
<p><a class="aura-pollutant-code" href="http://dd.eionet.europa.eu/vocabulary/aq/pollutant/20">20</a></p></td>
<td><blockquote>
<p>KEY</p>
</blockquote></td>
<td><ul>
<li><p>annual mean</p></li>
</ul></td>
<td><strong>P1Y</strong></td>
<td><ul>
<li><p>annual mean*</p></li>
</ul></td>
<td><strong>P1Y</strong></td>
<td></td>
<td></td>
<td><ul>
<li><p>annual mean weighted average</p></li>
</ul></td>
<td><strong>P1Y</strong></td>
</tr>
<tr class="even">
<td><blockquote>
<p>EXTRA</p>
</blockquote></td>
<td><ul>
<li><p>daily mean</p></li>
<li><p>50 percentile</p></li>
<li><p>hourly maximum</p></li>
<li><p>hourly minimum</p></li>
</ul></td>
<td><p><strong>P1D</strong></p>
<p><strong>P1Y- hr-per50</strong></p>
<p><strong>P1Y-hr-max</strong></p>
<p><strong>P1Y-hr-min</strong></p></td>
<td><ul>
<li><p>50 percentile</p></li>
<li><p>daily maximum</p></li>
<li><p>daily minimum</p></li>
</ul></td>
<td><p><strong>P1Y-day-per50</strong></p>
<p><strong>P1Y-day-max</strong></p>
<p><strong>P1Y-day-min</strong></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td rowspan="2"><p>As in PM<sub>10</sub></p>
<p><a class="aura-pollutant-code" href="http://dd.eionet.europa.eu/vocabulary/aq/pollutant/5018">5018</a></p>
<p>Cd in PM<sub>10</sub></p>
<p><a class="aura-pollutant-code" href="http://dd.eionet.europa.eu/vocabulary/aq/pollutant/5014">5014</a></p>
<p>Ni in PM<sub>10</sub></p>
<p><a class="aura-pollutant-code" href="http://dd.eionet.europa.eu/vocabulary/aq/pollutant/5015">5015</a></p>
<p>Pb in PM<sub>10</sub></p>
<p><a class="aura-pollutant-code" href="http://dd.eionet.europa.eu/vocabulary/aq/pollutant/5012">5012</a></p>
<p>BaP in PM<sub>10</sub></p>
<p><a class="aura-pollutant-code" href="http://dd.eionet.europa.eu/vocabulary/aq/pollutant/5029">5029</a></p></td>
<td><blockquote>
<p>KEY</p>
</blockquote></td>
<td></td>
<td></td>
<td><ul>
<li><p>annual mean</p></li>
</ul></td>
<td><strong>P1Y</strong></td>
<td></td>
<td></td>
<td><ul>
<li><p>annual mean weighted average</p></li>
</ul></td>
<td><strong>P1Y</strong></td>
</tr>
<tr class="even">
<td><blockquote>
<p>EXTRA</p>
</blockquote></td>
<td></td>
<td></td>
<td><ul>
<li><p>50 percentile</p></li>
<li><p>daily maximum</p></li>
<li><p>daily minimum</p></li>
<li><p>monthly mean (BaP)</p></li>
<li><p>3-year mean (BaP)</p></li>
</ul></td>
<td><p><strong>P1Y-day-per50</strong></p>
<p><strong>P1Y-day-max</strong></p>
<p><strong>P1Y-day-min</strong></p>
<p><strong>P1M</strong></p>
<p><strong>P3Y</strong></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>All other pollutants</td>
<td><blockquote>
<p>EXTRA</p>
</blockquote></td>
<td><ul>
<li><p>annual mean</p></li>
<li><p>daily mean</p></li>
<li><p>50 percentile</p></li>
<li><p>hourly maximum</p></li>
<li><p>hourly minimum</p></li>
</ul></td>
<td><p><strong>P1Y</strong></p>
<p><strong>P1D</strong></p>
<p><strong>P1Y-hr-per50</strong></p>
<p><strong>P1Y-hr-max</strong></p>
<p><strong>P1Y-hr-min</strong></p></td>
<td><ul>
<li><p>annual mean*</p></li>
<li><p>50 percentile</p></li>
<li><p>daily maximum</p></li>
<li><p>daily minimum</p></li>
</ul></td>
<td><p><strong>P1Y</strong></p>
<p><strong>P1Y-day-per50</strong></p>
<p><strong>P1Y-day-max</strong></p>
<p><strong>P1Y-day-min</strong></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>
</div>

*  
NOTES:* \* *If daily values reported. \*\* Component codelist is http://dd.eionet.europa.eu/vocabulary/aq/pollutant/\[code\]*

*  
*

Table 4: List of base statistics used in the computation of derived aggregation indicators, their pollutant applicability, minimum validity criteria (for fixed measurements), and corresponding vocabulary URLs

<table class="aura-stat-table aura-stat-table-4">
<thead>
<tr>
<th><strong>Statistic</strong></th>
<th><strong>Used in aggregation(s)</strong></th>
<th><strong>Pollutant</strong></th>
<th><strong>Minimum valid values</strong></th>
<th><strong>Vocabulary URL</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>AOT40c</strong></td>
<td>AOT40cmeasured</td>
<td>O&lt;sub&gt;3&lt;/sub&gt;</td>
<td>85% (939) hours in averaging period (1 May to 31 July)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/AOT40c">&lt;u&gt;https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/AOT40c&lt;/u&gt;</a></td>
</tr>
<tr>
<td><strong>P1D</strong></td>
<td>All aggregations with base P1D</td>
<td>All</td>
<td>75% of hours in the day (18 hours)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1D">&lt;u&gt;https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1D&lt;/u&gt;</a></td>
</tr>
<tr>
<td><strong>P1Y</strong></td>
<td>P3Y</td>
<td>PM&lt;sub&gt;10&lt;/sub&gt;, BaP in PM&lt;sub&gt;10&lt;/sub&gt;, PM&lt;sub&gt;2.5&lt;/sub&gt;, O&lt;sub&gt;3&lt;/sub&gt;{ref}<code>[15] &lt;footnote-15&gt;</code>, NO&lt;sub&gt;2&lt;/sub&gt;, NO&lt;sub&gt;X&lt;/sub&gt; as NO&lt;sub&gt;2&lt;/sub&gt;</td>
<td>85% of hours/days (7446 hours/311 days) (if leap year 7470 hours/312 days)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y">&lt;u&gt;https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y&lt;/u&gt;</a></td>
</tr>
<tr>
<td><strong>P1Y</strong></td>
<td>P3Y</td>
<td>BaP in PM&lt;sub&gt;10&lt;/sub&gt;</td>
<td>30% of hours/days (2628 hours/110 days) (if leap year 2636 hours/110 days)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y">&lt;u&gt;https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y&lt;/u&gt;</a></td>
</tr>
<tr>
<td><strong>P1Y-dmaxAbove120</strong></td>
<td>P3Y-dmaxAbove120</td>
<td>O&lt;sub&gt;3&lt;/sub&gt;</td>
<td>85% of P8H-dmax (311 values) (if leap year 312 values)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-dmaxAbove120">&lt;u&gt;https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-dmaxAbove120&lt;/u&gt;</a></td>
</tr>
<tr>
<td><strong>P8H-dmax</strong></td>
<td>All aggregations with base P8H-dmax</td>
<td>O&lt;sub&gt;3&lt;/sub&gt;, CO</td>
<td>75% of valid P8H-run in the day (18)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P8H-dmax">&lt;u&gt;https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P8H-dmax&lt;/u&gt;</a></td>
</tr>
<tr>
<td><strong>P8H-run</strong></td>
<td>P8H-dmax</td>
<td>O&lt;sub&gt;3&lt;/sub&gt;, CO</td>
<td>75% of hours</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P8H-run">https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P8H-run</a></td>
</tr>
</tbody>
</table>



<div class="aura-table-separator" aria-hidden="true"></div>

Table 5: List of statistics, the primary observation or aggregation they are based on the pollutant for which it is calculated, the minimum number of valid values{ref}`[16] <footnote-16>` in order to be flagged as valid (for fixed measurements), and the corresponding vocabulary URL

<table class="aura-stat-table aura-stat-table-5">
<colgroup>
<col style="width: 13%" />
<col style="width: 6%" />
<col style="width: 4%" />
<col style="width: 9%" />
<col style="width: 7%" />
<col style="width: 10%" />
<col style="width: 48%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Statistic</strong></th>
<th colspan="2"><strong>Base</strong></th>
<th><strong>Pollutant</strong></th>
<th colspan="2"><strong>Minimum valid values</strong></th>
<th><strong>Vocabulary URL</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>AOT40c</strong></td>
<td colspan="2">AOT40h</td>
<td>O<sub>3</sub></td>
<td colspan="2">85% (939) hours in averaging period</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/AOT40c"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/AOT40c</u></a></td>
</tr>
<tr class="even">
<td><strong>AOT40cmeasured</strong></td>
<td colspan="2">AOT40h</td>
<td>O<sub>3</sub></td>
<td colspan="2">85% (939) hours in averaging period</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/AOT40cmeasured"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/AOT40cmeasured</u></a></td>
</tr>
<tr class="odd">
<td><strong>AOT40c-P5Y</strong></td>
<td colspan="2">AOT40h</td>
<td>O<sub>3</sub></td>
<td colspan="2">3 valid AOT40c<a href="#fn1" class="footnote-ref" id="fnref1" role="doc-noteref"><sup>1</sup></a></td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/AOT40c-P5Y"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/AOT40c-P5Y</u></a></td>
</tr>
<tr class="even">
<td><strong>AOT40f</strong></td>
<td colspan="2">AOT40h</td>
<td>O<sub>3</sub></td>
<td colspan="2">85% (1867) hours in averaging period</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/AOT40f"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/AOT40f</u></a></td>
</tr>
<tr class="odd">
<td><strong>AOT40fmeasured</strong></td>
<td colspan="2">AOT40h</td>
<td>O<sub>3</sub></td>
<td colspan="2">85% (1867) hours in averaging period</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/AOT40fmeasured"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/AOT40fmeasured</u></a></td>
</tr>
<tr class="even">
<td><strong>AOT40h</strong></td>
<td colspan="2">hour</td>
<td>O<sub>3</sub></td>
<td colspan="2">-</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/AOT40h"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/AOT40h</u></a></td>
</tr>
<tr class="odd">
<td><strong>P1D</strong></td>
<td colspan="2">hour</td>
<td>All</td>
<td colspan="2">75% of hours in the day (18 hours)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1D"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1D</u></a></td>
</tr>
<tr class="even">
<td><strong>P1D-hr-max</strong></td>
<td colspan="2">hour</td>
<td>NO<sub>2</sub></td>
<td colspan="2">75% of hours in the day (18 hours)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1D-hr-max"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1D-hr-max</u></a></td>
</tr>
<tr class="odd">
<td><strong>P1D-hrsAbove180</strong></td>
<td colspan="2">hour</td>
<td>O<sub>3</sub></td>
<td colspan="2">75% of hours in the day (18 hours)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1D-hrsAbove180"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1D-hrsAbove180</u></a></td>
</tr>
<tr class="even">
<td><strong>P1D-hrsAbove240</strong></td>
<td colspan="2">hour</td>
<td>O<sub>3</sub></td>
<td colspan="2">75% of hours in the day (18 hours)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1D-hrsAbove240"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1D-hrsAbove240</u></a></td>
</tr>
<tr class="odd">
<td><strong>P1M</strong></td>
<td colspan="2">hour, day</td>
<td>PM<sub>10</sub>, BaP in PM<sub>10</sub>, PM<sub>2.5</sub>, O<sub>3</sub>, NO<sub>2</sub>, NO<sub>X</sub> as NO<sub>2</sub></td>
<td colspan="2">75% of hours/day in the month</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1M"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1M</u></a></td>
</tr>
<tr class="even">
<td><strong>P1M-dmaxAbove100</strong></td>
<td colspan="2">P8H-dmax</td>
<td>O<sub>3</sub></td>
<td colspan="2">75% of daily P8H-dmax values in month</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1M-dmaxAbove100"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1M-dmaxAbove100</u></a></td>
</tr>
<tr class="odd">
<td><strong>P1M-dmaxAbove120</strong></td>
<td colspan="2">P8H-dmax</td>
<td>O<sub>3</sub></td>
<td colspan="2">75% of daily P8H-dmax values in month</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1M-dmaxAbove120"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1M-dmaxAbove120</u></a></td>
</tr>
<tr class="even">
<td><strong>P1M-hrsAbove180</strong></td>
<td colspan="2">hour</td>
<td>O<sub>3</sub></td>
<td colspan="2">75% of hours in the month</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1M-hrsAbove180"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1M-hrsAbove180</u></a></td>
</tr>
<tr class="odd">
<td><strong>P1M-hrsAbove200</strong></td>
<td colspan="2">hour</td>
<td>NO<sub>2</sub></td>
<td colspan="2">75% of hours in the month</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1M-hrsAbove200"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1M-hrsAbove200</u></a></td>
</tr>
<tr class="even">
<td><strong>P1M-hrsAbove240</strong></td>
<td colspan="2">hour</td>
<td>O<sub>3</sub></td>
<td colspan="2">75% of hours in the month</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1M-hrsAbove240"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1M-hrsAbove240</u></a></td>
</tr>
<tr class="odd">
<td><strong>P1M-hrsAbove350</strong></td>
<td colspan="2">hour</td>
<td>SO<sub>2</sub></td>
<td colspan="2">75% of hours in the month</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1M-hrsAbove350"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1M-hrsAbove350</u></a></td>
</tr>
<tr class="even">
<td><strong>P1Y</strong></td>
<td colspan="2">hour, day, var</td>
<td>SO<sub>2</sub>, NO<sub>2</sub>, NO<sub>X</sub> as NO<sub>2</sub>, O<sub>3</sub><sup>9</sup>, PM<sub>10</sub>, PM<sub>2.5</sub>, C<sub>6</sub>H<sub>6</sub></td>
<td colspan="2">85% of hours/days (7446 hours*/311 days**)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y</u></a></td>
</tr>
<tr class="odd">
<td><strong>P1Y</strong></td>
<td colspan="2">day, var</td>
<td>BaP in PM<sub>10</sub></td>
<td colspan="2">30% of hours/days (2628 hours/110 days) (if leap year 2636 hours/110 days)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y</u></a></td>
</tr>
<tr class="even">
<td><strong>P1Y</strong></td>
<td colspan="2">day, var</td>
<td>Metals</td>
<td colspan="2">45% of hours/days (3942 hours/165 days) (if leap year 3953 hours/165 days)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y</u></a></td>
</tr>
<tr class="odd">
<td><strong>P1Y-3daysAbove50</strong></td>
<td colspan="2">day, P1D</td>
<td>PM<sub>2.5</sub></td>
<td colspan="2">85% of days/P1Ds (311** days)</td>
<td><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-3daysAbove50</u></td>
</tr>
<tr class="even">
<td><strong>P1Y-3daysAbove90</strong></td>
<td colspan="2">day, P1D</td>
<td>PM<sub>10</sub></td>
<td colspan="2">85% of days/P1Ds (311** days)</td>
<td><u><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-3daysAbove90">https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-3daysAbove90</a></u></td>
</tr>
<tr class="odd">
<td><strong>P1Y-3hAbove200</strong></td>
<td colspan="2">hour</td>
<td>NO<sub>2</sub></td>
<td colspan="2">85% of hours (7446* hours)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-3hAbove200"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-3hAbove200</u></a></td>
</tr>
<tr class="even">
<td><strong>P1Y-3hAbove350</strong></td>
<td colspan="2">hour</td>
<td>SO<sub>2</sub></td>
<td colspan="2">85% of hours (7446* hours)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-3hAbove350"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-3hAbove350</u></a></td>
</tr>
<tr class="odd">
<td><strong>P1Y-3hAbove400</strong></td>
<td colspan="2">hour</td>
<td>NO<sub>2</sub></td>
<td colspan="2">85% of hours (7446* hours)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-3hAbove400"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-3hAbove400</u></a></td>
</tr>
<tr class="even">
<td><strong>P1Y-3hAbove500</strong></td>
<td colspan="2">hour</td>
<td>SO<sub>2</sub></td>
<td colspan="2">85% of hours (7446* hours)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-3hAbove500"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-3hAbove500</u></a></td>
</tr>
<tr class="odd">
<td><strong>P1Y-8hdmxAbove10</strong></td>
<td colspan="2">P8H-dmax</td>
<td>CO</td>
<td colspan="2">85% of P8H-dmax (311*** values)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-8hdmxAbove10"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-8hdmxAbove10</u></a></td>
</tr>
<tr class="even">
<td><strong>P1Y-day-max</strong></td>
<td colspan="2">P1D, day</td>
<td>All</td>
<td colspan="2">85% of days/P1Ds (311** days)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-day-max"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-day-max</u></a></td>
</tr>
<tr class="odd">
<td><strong>P1Y-day-max36</strong></td>
<td colspan="2">P1D, day</td>
<td>PM<sub>10</sub></td>
<td colspan="2">85% of days/P1Ds (311** days)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-day-max36"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-day-max36</u></a></td>
</tr>
<tr class="even">
<td><strong>P1Y-day-max4</strong></td>
<td colspan="2">P1D, day</td>
<td>SO<sub>2</sub></td>
<td colspan="2">85% of days/P1Ds (311** days)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-day-max4"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-day-max4</u></a></td>
</tr>
<tr class="odd">
<td><strong>P1Y-day-max-per99.18</strong></td>
<td colspan="2">P1D, day</td>
<td>SO<sub>2</sub></td>
<td colspan="2">85% of days/P1Ds (311** days)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-day-max-per99.18"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-day-max-per99.18</u></a></td>
</tr>
<tr class="even">
<td><strong>P1Y-day-min</strong></td>
<td colspan="2">P1D, day</td>
<td>All</td>
<td colspan="2">85% of days/P1Ds (311** days)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-day-min"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-day-min</u></a></td>
</tr>
<tr class="odd">
<td><strong>P1Y-day-per50</strong></td>
<td colspan="2">P1D, day</td>
<td>All</td>
<td colspan="2">85% of days/P1Ds (311** days)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-day-per50"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-day-per50</u></a></td>
</tr>
<tr class="even">
<td><strong>P1Y-daysAbove125</strong></td>
<td colspan="2">P1D, day</td>
<td>SO<sub>2</sub></td>
<td colspan="2">85% of days/P1Ds (311** days)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-daysAbove125"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-daysAbove125</u></a></td>
</tr>
<tr class="odd">
<td><strong>P1Y-daysAbove25</strong></td>
<td colspan="2">P1D, day</td>
<td>PM<sub>2.5</sub></td>
<td colspan="2">85% of days/P1Ds (311** days)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-daysAbove25">https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-daysAbove25</a></td>
</tr>
<tr class="even">
<td><strong>P1Y-daysAbove4</strong></td>
<td colspan="2">P1D, day</td>
<td>CO</td>
<td colspan="2">85% of days/P1Ds (311** days)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-daysAbove4">https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-daysAbove4</a></td>
</tr>
<tr class="odd">
<td><strong>P1Y-daysAbove45</strong></td>
<td colspan="2">P1D, day</td>
<td>PM<sub>10</sub></td>
<td colspan="2">85% of days/P1Ds (311** days)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-daysAbove45">https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-daysAbove45</a></td>
</tr>
<tr class="even">
<td><strong>P1Y-daysAbove50</strong></td>
<td colspan="2">P1D, day</td>
<td>PM<sub>10</sub>, NO<sub>2</sub>, SO<sub>2</sub>, PM<sub>2.5</sub></td>
<td colspan="2">85% of days/P1Ds (311** days)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-daysAbove50"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-daysAbove50</u></a></td>
</tr>
<tr class="odd">
<td><strong>P1Y-daysAbove90</strong></td>
<td colspan="2">P1D, day</td>
<td>PM<sub>10</sub></td>
<td colspan="2">85% of days/P1Ds (311** days)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-daysAbove90">https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-daysAbove90</a></td>
</tr>
<tr class="even">
<td><strong>P1Y-dmaxAbove100</strong></td>
<td colspan="2">P8H-dmax</td>
<td>O<sub>3</sub> <sup>9</sup></td>
<td colspan="2">85% of P8H-dmax (311*** values)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-dmaxAbove100">https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-dmaxAbove100</a></td>
</tr>
<tr class="odd">
<td><strong>P1Y-dmaxAbove120</strong></td>
<td colspan="2">P8H-dmax</td>
<td>O<sub>3</sub> <sup>9</sup></td>
<td colspan="2">85% of P8H-dmax (311*** values)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-dmaxAbove120"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-dmaxAbove120</u></a></td>
</tr>
<tr class="even">
<td><strong>P1Y-dmax-per93.15</strong></td>
<td colspan="2">P8H-dmax</td>
<td>O<sub>3</sub> <sup>9</sup></td>
<td colspan="2">85% of P8H-dmax (311*** values)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-dmax-per93.15"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-dmax-per93.15</u></a></td>
</tr>
<tr class="odd">
<td><strong>P1Y-dmax-per95.07</strong></td>
<td colspan="2">P8H-dmax</td>
<td>O<sub>3</sub> <sup>9</sup></td>
<td colspan="2">85% of P8H-dmax (311*** values)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-dmax-per95.07">https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-dmax-per95.07</a></td>
</tr>
<tr class="even">
<td><strong>P1Y-dmax-per99</strong></td>
<td colspan="2">P8H-dmax</td>
<td>O<sub>3</sub> <sup>9</sup></td>
<td colspan="2">85% of P8H-dmax (311*** values)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-dmax-per99"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-dmax-per99</u></a></td>
</tr>
<tr class="odd">
<td><strong>P1Y-dx-avg</strong></td>
<td colspan="2">P8H-dmax</td>
<td>O<sub>3</sub>, CO</td>
<td colspan="2">85% of P8H-dmax (311*** values)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-dx-avg"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-dx-avg</u></a></td>
</tr>
<tr class="even">
<td><strong>P1Y-dx-max</strong></td>
<td colspan="2">P8H-dmax</td>
<td>O<sub>3</sub>, CO</td>
<td colspan="2">85% of P8H-dmax (311*** values)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-dx-max"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-dx-max</u></a></td>
</tr>
<tr class="odd">
<td><strong>P1Y-dx-max26</strong></td>
<td colspan="2">P8H-dmax</td>
<td>O<sub>3</sub></td>
<td colspan="2">85% of P8H-dmax (311*** values)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-dx-max26"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-dx-max26</u></a></td>
</tr>
<tr class="even">
<td><strong>P1Y-hr-max</strong></td>
<td colspan="2">hour</td>
<td>All</td>
<td colspan="2">85% of hours (7446* hours)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hr-max"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hr-max</u></a></td>
</tr>
<tr class="odd">
<td><strong>P1Y-hr-max19</strong></td>
<td colspan="2">hour</td>
<td>NO<sub>2</sub></td>
<td colspan="2">85% of hours (7446* hours)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hr-max19"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hr-max19</u></a></td>
</tr>
<tr class="even">
<td><strong>P1Y-hr-max25</strong></td>
<td colspan="2">hour</td>
<td>SO<sub>2</sub></td>
<td colspan="2">85% of hours (7446* hours)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hr-max25"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hr-max25</u></a></td>
</tr>
<tr class="odd">
<td><strong>P1Y-hr-max-per99.73</strong></td>
<td colspan="2">hour</td>
<td>SO<sub>2</sub></td>
<td colspan="2">85% of hours (7446* hours)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hr-max-per99.73"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hr-max-per99.73</u></a></td>
</tr>
<tr class="even">
<td><strong>P1Y-hr-max-per99.79</strong></td>
<td colspan="2">hour</td>
<td>NO<sub>2</sub></td>
<td colspan="2">85% of hours (7446* hours)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hr-max-per99.79"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hr-max-per99.79</u></a></td>
</tr>
<tr class="odd">
<td><strong>P1Y-hr-max-per99.97</strong></td>
<td colspan="2">hour</td>
<td>SO<sub>2</sub>, NO<sub>2</sub></td>
<td colspan="2">85% of hours (7446* hours)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hr-max-per99.97">https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hr-max-per99.97</a></td>
</tr>
<tr class="even">
<td><strong>P1Y-hr-min</strong></td>
<td colspan="2">hour</td>
<td>All</td>
<td colspan="2">85% of hours (7446* hours)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hr-min"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hr-min</u></a></td>
</tr>
<tr class="odd">
<td><strong>P1Y-hr-per50</strong></td>
<td colspan="2">hour</td>
<td>All</td>
<td colspan="2">85% of hours (7446* hours)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hr-per50"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hr-per50</u></a></td>
</tr>
<tr class="even">
<td><strong>P1Y-hrsAbove150</strong></td>
<td colspan="2">hour</td>
<td>NO<sub>2</sub></td>
<td colspan="2">85% of hours (7446* hours)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hrsAbove150">https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hrsAbove150</a></td>
</tr>
<tr class="odd">
<td><strong>P1Y-hrsAbove180</strong></td>
<td colspan="2">hour</td>
<td>O<sub>3</sub></td>
<td colspan="2">85% of hours (7446* hours)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hrsAbove180"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hrsAbove180</u></a></td>
</tr>
<tr class="even">
<td><strong>P1Y-hrsAbove200</strong></td>
<td colspan="2">hour</td>
<td>NO<sub>2</sub></td>
<td colspan="2">85% of hours (7446* hours)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hrsAbove200"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hrsAbove200</u></a></td>
</tr>
<tr class="odd">
<td><strong>P1Y-hrsAbove240</strong></td>
<td colspan="2">hour</td>
<td>O<sub>3</sub></td>
<td colspan="2">85% of hours (7446* hours)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hrsAbove240"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hrsAbove240</u></a></td>
</tr>
<tr class="even">
<td><strong>P1Y-hrsAbove275</strong></td>
<td colspan="2">hour</td>
<td>SO<sub>2</sub></td>
<td colspan="2">85% of hours (7446* hours)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hrsAbove275">https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hrsAbove275</a></td>
</tr>
<tr class="odd">
<td><strong>P1Y-hrsAbove350</strong></td>
<td colspan="2">hour</td>
<td>SO<sub>2</sub></td>
<td colspan="2">85% of hours (7446* hours)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hrsAbove350"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hrsAbove350</u></a></td>
</tr>
<tr class="even">
<td><strong>P1Y-hrsAbove400</strong></td>
<td colspan="2">hour</td>
<td>NO<sub>2</sub></td>
<td colspan="2">85% of hours (7446* hours)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hrsAbove400"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-hrsAbove400</u></a></td>
</tr>
<tr class="odd">
<td><strong>P1Y-maxP6M-P8H-dmax</strong></td>
<td colspan="2">P8H-dmax</td>
<td>O<sub>3</sub></td>
<td colspan="2">10 valid P6M-P8H-dmax</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-maxP6M-P8H-dmax"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-maxP6M-P8H-dmax</u></a></td>
</tr>
<tr class="even">
<td><strong>P1Y-P1D-per90.4</strong></td>
<td colspan="2">P1D, day</td>
<td>PM<sub>10</sub></td>
<td colspan="2">85% of days/P1Ds (311** days)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-P1D-per90.4"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-P1D-per90.4</u></a></td>
</tr>
<tr class="odd">
<td><strong>P1Y-P1D-per90.41</strong></td>
<td colspan="2">P1D, day</td>
<td>PM<sub>10</sub></td>
<td colspan="2">85% of days/P1Ds (311** days)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-P1D-per90.41"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-P1D-per90.41</u></a></td>
</tr>
<tr class="even">
<td><strong>P1Y-P1D-per95.07</strong></td>
<td colspan="2">P1D, day</td>
<td>PM<sub>10</sub>, PM<sub>2.5</sub>, CO, SO<sub>2</sub>, NO<sub>2</sub></td>
<td colspan="2">85% of days/P1Ds (311** days)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-P1D-per95.07">https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-P1D-per95.07</a></td>
</tr>
<tr class="odd">
<td><strong>P1Y-P1D-per99</strong></td>
<td colspan="2">P1D, day</td>
<td>PM<sub>10</sub>, PM<sub>2.5</sub>, NO<sub>2</sub>, SO<sub>2</sub>, CO, O<sub>3</sub></td>
<td colspan="2">85% of days/P1Ds (311** days)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-P1D-per99"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P1Y-P1D-per99</u></a></td>
</tr>
<tr class="even">
<td><strong>P3Y</strong></td>
<td colspan="2">hour, day</td>
<td>PM<sub>10</sub>, BaP in PM<sub>10</sub>, PM<sub>2.5</sub>, O<sub>3</sub>, NO<sub>2</sub>, NO<sub>X</sub> as NO<sub>2</sub></td>
<td colspan="2">85% of hours/days (22338 hours/931 days)****</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P3Y"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P3Y</u></a></td>
</tr>
<tr class="odd">
<td><strong>P3Y-dmaxAbove120</strong></td>
<td colspan="2">P8H-dmax</td>
<td>O<sub>3</sub></td>
<td colspan="2">85% of P8H-dmax (931***** values)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P3Y-dmaxAbove120"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P3Y-dmaxAbove120</u></a></td>
</tr>
<tr class="even">
<td><strong>P6M</strong></td>
<td colspan="2">hour, day</td>
<td>O<sub>3</sub></td>
<td colspan="2">75% of hours/day in the 6 months</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P6M"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P6M</u></a></td>
</tr>
<tr class="odd">
<td><strong>P6M-P8H-dmax</strong></td>
<td colspan="2">P8H-dmax</td>
<td>O<sub>3</sub></td>
<td colspan="2">75% of daily P8H-dmax values in the 6 months</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P6M-P8H-dmax"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P6M-P8H-dmax</u></a></td>
</tr>
<tr class="even">
<td><strong>P8H-dmax</strong></td>
<td colspan="2">P8H-run</td>
<td>O<sub>3</sub>, CO</td>
<td colspan="2">75% of valid P8H-run in the day (18)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P8H-dmax"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/P8H-dmax</u></a></td>
</tr>
<tr class="odd">
<td><strong>SOMO10</strong></td>
<td colspan="2">P8H-dmax</td>
<td>O<sub>3</sub></td>
<td colspan="2">85% of P8H-dmax (311*** values)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/SOMO10"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/SOMO10</u></a></td>
</tr>
<tr class="even">
<td><strong>SOMO35</strong></td>
<td colspan="2">P8H-dmax</td>
<td>O<sub>3</sub></td>
<td colspan="2">85% of P8H-dmax (311*** values)</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/SOMO35"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/SOMO35</u></a></td>
</tr>
<tr class="odd">
<td><strong>summer-avg</strong></td>
<td colspan="2">hour, day</td>
<td>O<sub>3</sub></td>
<td colspan="2">3734 hours/156 days</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/summer-avg"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/summer-avg</u></a></td>
</tr>
<tr class="even">
<td><strong>winter-avg</strong></td>
<td colspan="2">hour, day</td>
<td>SO<sub>2</sub></td>
<td colspan="2">3713 hours/155 days******</td>
<td><a href="https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/winter-avg"><u>https://dd.eionet.europa.eu/vocabularyconcept/aq/aggregationprocess/winter-avg</u></a></td>
</tr>
<tr class="odd">
<td colspan="2"><strong>Note:</strong></td>
<td colspan="3"><p><strong>* if leap year: 7470 hours</strong></p>
<p><strong>** if leap year: 312 days</strong></p>
<p><strong>*** if leap year: 312 valid P8H-dmax</strong></p>
<p><strong>**** if leap year: 22359 hours/932 days</strong></p>
<p><strong>***** if leap year: 932 valid P8H-dmax</strong></p>
<p><strong>****** if leap year: 3734 hours/156 days</strong>{ref}`[17] <footnote-17>`</p></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>


## 5.1 Averages

Averages (means) shall be calculated using the shortest available reported averaging period, in accordance with Directive (EU) 2024/2881, Annex V, Section C. Based on this principle, the preferred order for calculating means is: first, hourly data; second, daily data.

In cases where data are reported with irregular or variable averaging intervals (VAR), these are first converted into hourly values, as described in Chapter 3.3. Once transformed, the resulting hourly series are used for the calculation of the relevant averages.

### 5.1.1 Calculation of Averages

For **hourly and daily** data types, the mean over a given averaging period shall be calculated as the arithmetic average of all valid values:

$$Mean = \frac{\Sigma_{i}C_{i}}{N_{valid}}$$

where Cᵢ represents each valid concentration value (e.g. hourly or daily), and N_valid is the total number of valid values in the period.

If all values within a given period are invalid, no valid average is produced; instead, the result is flagged as invalid.

For **data reported with AggType = var**, as explained in Chapter 3.3, such records are used exclusively for the calculation of the **annual mean (P1Y)** and are excluded from the computation of other statistical indicators

To ensure consistency with the minimum temporal resolution required for aggregations, variable-period data are first **converted into an equivalent hourly time series**.  
Each reported concentration is expanded to all full hours within its validity interval.  
After this conversion, the mean is calculated as for other data types; however, to properly reflect differences in measurement coverage, the calculation must consider both the **duration** and the **data capture** associated with each record.

This results in a **weighted mean**, computed as follows:

$$Weighted\ mean = \frac{\Sigma_{i}{(C}_{i} \cdot T_{i} \cdot {DCap}_{i})}{\Sigma_{i}(T_{i} \cdot {DCap}_{i})}$$

where:

- C<sub>i</sub>​ = reported concentration value,

- T<sub>i</sub>​ = duration of the measurement interval,

- DCap<sub>i</sub>​ = data capture representing completeness for that interval.

:::{admonition} Example 4. Conversion of variable-period data (*AggType = var*) to an equivalent hourly series including data capture
:class: aura-example

The table below illustrates the transformation of data reported with *AggType = var* into an hourly-equivalent time series, before calculating the annual mean (P1Y).  
Each record represents a concentration valid over a time interval, expanded into hourly periods and weighted by its data capture.

| datetime_begin   | datetime_end     | Reported value (μg/m³) | Duration (Ti) (h) | Data capture | Effective duration |     |
|------------------|------------------|------------------------|-------------------|--------------|--------------------|-----|
| 2025-01-01 08:00 | 2025-01-01 10:00 | 48.0                   | 2                 | 50           | 2x0.5 = 1          |     |
| 2025-01-01 11:00 | 2025-01-01 14:00 | 52.0                   | 3                 | 100          | 3x1=33             |     |
| 2025-01-01 15:00 | 2025-01-01 17:00 | 56.0                   | 2                 | 100          | 2x1=2              |     |

The weighted mean concentration is calculated as:

$$Mean = \frac{(48x1) + (52x3) + (56x2)}{1 + 3 + 2} = \ 52,7µg/m^{3}$$

If the data capture were not considered, the mean would be:

$$Mean = \frac{(48x2) + (52x3) + (56x2)}{2 + 3 + 2} = \ 52,3µg/m^{3}$$

The lower data capture in the first interval reduces its weight in the overall mean
:::

The aggregates calculated using this method are:

- P1D (daily mean): <http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1D>

- P1M (monthly mean):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1M>

- P1Y (annual mean): <http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y>

- P1Y-dx-avg: <http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-dx-avg>

### 5.1.2 Winter and summer means

lLke the annual means, the **winter or summer averages** shall be calculated using the shortest reported averaging time available (e.g. hourly or daily).

The winter mean shall be calculated as follows:

$$Winter\ Mean = \ \frac{\Sigma_{i}{CW}_{i}}{{NW}_{valid}}$$

where *CW<sub>i</sub>* represents each valid concentration value (e.g. hourly or daily) over the winter period, and *NW<sub>valid</sub>* is the total number of valid values in the winter period. The winter mean corresponding to year X is calculated over the winter months (i.e., <u>1<sup>st</sup> October year X-1 to 31<sup>st</sup> March year X</u>).

The **summer mean** is calculated analogously over the summer months, between <u>1<sup>st</sup> April and 30<sup>th</sup> September</u>.

$$Summer\ Mean = \ \frac{\Sigma_{i}{CS}_{i}}{{NS}_{valid}}$$

where *CS<sub>i</sub>* represents each valid concentration value (e.g. hourly or daily) over the summer period, and *NS<sub>valid</sub>* is the total number of valid values in the summer period.

The aggregates calculated using this method are:

- Summer-avg (mean between 1<sup>st</sup> April to 30<sup>th</sup> September):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/summer-avg>

- Winter-avg (mean between 1st October to 31th March):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/winter-avg>

## 5.2 Rolling Six-Month Averages

This statistical indicator refers to the rolling six-month average concentration, calculated by taking the average from the first hour/day of the month X–5 to the last hour/day of month X. Each calculation thus corresponds to a continuous six-month window, shifted monthly throughout the time series.

The mean concentration over each six-month period is calculated as:

$$Six - Month\ Mean = \ \frac{\sum_{i = 1}^{N_{6M\_ valid}}C_{i}}{N_{6M\_ valid}}$$

where:

- **C<sub>i</sub>**= each valid concentration value (hourly or daily) in the six-month period

- **N<sub>6M_valid</sub>** = total number of valid values within the six-month period

:::{admonition} Example 5. Calculation Rolling Six-Months
:class: aura-example

- For **January 2021**, the average is computed over the period **1 August 2020 to 31 January 2021**.

- For **February 2021**, the period would be **1 September 2020 to 28 February 2021**, and so on.

The **mean concentration** over each six-month period is calculated following the methodology defined in Chapter 5.1.1 Calculation of Averages.
:::

The aggregates calculated using this method are:

- P6M (6 monthly average, hourly data):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P6M>

- P6M-P8H-dmax (Average of the daily maximum eight-hour mean (P8H-dmax) in 6 consecutive months):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P6M-P8H-dmax>

## 5.3 Maximum and minimum

The maximum shall be calculated as follows:

<table class="aura-formula-table">
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p><em>Maximum = max(C<sub>i</sub>)</em></p>
</blockquote></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

where *C<sub>i</sub>* represents each valid concentration value (e.g. hourly or daily) over the period.

Similarly, the minimum shall be calculated as:

*Minimum = min(C<sub>i</sub>)*

where *C<sub>i</sub>* is defined as above.

The aggregates calculated using this method are:

- P1D-hr-max (highest hourly value of the year)

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-hr-max>

- P1Y-day-max (highest daily value of the year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-day-max>

- P1Y-day-min (lowest daily value of the year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-day-min>

- P1Y-dx-max (highest P8H-dmax value of the year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-dx-max>

- P1Y-hr-max (highest hourly value of the year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-hr-max>

- P1Y-hr-min (lowest hourly value of the year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-hr-min>

- P1Y-maxP6M-P8H-dmax (Yearly highest six monthly average of daily maximum 8-hour mean concentration also know as peak season for ozone):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-maxP6M-P8H-dmax>

## 5.4 Number of Exceedances Above a Threshold

The number of exceedances of a given limit value (LV) or Assessment Threshold (AT) over a specified period (e.g., day, month, or year) shall be calculated as the count of valid concentration values that are higher than the predefined threshold. These values shall be rounded (see Chapter 6).

This calculation applies to hourly and daily data, where exceedances correspond to hours or days with values above the predefined threshold.

Formally, for a period **T**, the number of exceedances **N<sub>exceed</sub>** is:

$$N_{\mathrm{exceed}}(T) = \sum_{i \in T} \mathbf{1}(C_i > AT)$$

The aggregates calculated using this method are:

- P1D-hrsAbove180 (Number of hours with values higher than 180 (unit) in given day):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1D-hrsAbove180>

- P1D-hrsAbove240 (Number of hours with values higher than 240 (unit) in given day):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1D-hrsAbove240>

- P1M-dmaxAbove100 (Number of days with daymax (P8H-dmax) values higher than 100 (unit) in given month):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1M-dmaxAbove100>

- P1M-dmaxAbove120 (Number of days with daymax (P8H-dmax) values higher than 120 (unit) in given month):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1M-dmaxAbove120>

- P1M-hrsAbove180 (Number of hours with values higher than 180 (unit) in given month):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1M-hrsAbove180>

- P1M-hrsAbove200 (Number of hours with values higher than 200 (unit) in given month):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1M-hrsAbove200>

- P1M-hrsAbove240 (Number of hours with values higher than 240 (unit) in given month):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1M-hrsAbove240>

- P1M-hrsAbove350 (Number of hours with values higher than 350 (unit) in given month):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1M-hrsAbove350>

- P1Y-8hdmxAbove10 (Number of days with daymax values (P8H_dmax) higher than 10 (unit) in given year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-8hdmxAbove10>

- P1Y-daysAbove125 (Number of days with daily average values higher than 125 (unit) in given year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-daysAbove125>

- P1Y-daysAbove25 (Number of days with daily average values higher than 25 (unit) in given year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-daysAbove25>

- P1Y-daysAbove4 (Number of days with daily average values higher than 4 (unit) in given year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-daysAbove4>

- P1Y-daysAbove45 (Number of days with daily average values higher than 45 (unit) in given year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-daysAbove45>

- P1Y-daysAbove50 (Number of days with daily average values higher than 50 (unit) in given year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-daysAbove50>

- P1Y-daysAbove90 (Number of days with daily average values higher than 90 (unit) in given year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-daysAbove90>

- P1Y-dmaxAbove100 (Number of days with daymax (P8H-dmax) values higher than 100 (unit) in given year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-dmaxAbove100>

- P1Y-dmaxAbove120 (Number of days with daymax (P8H-dmax) values higher than 120 (unit) in given year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-dmaxAbove120>

- P1Y-hrsAbove150 (Number of hours with values higher than 150 (unit) in given year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-hrsAbove150>

- P1Y-hrsAbove180 (Number of hours with values higher than 180 (unit) in given year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-hrsAbove180>

- P1Y-hrsAbove200 (Number of hours with values higher than 200 (unit) in given year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-hrsAbove200>

- P1Y-hrsAbove240 (Number of hours with values higher than 240 (unit) in given year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-hrsAbove240>

- P1Y-hrsAbove275 (Number of hours with values higher than 275 (unit) in given year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-hrsAbove275>

- P1Y-hrsAbove350 (Number of hours with values higher than 350 (unit) in given year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-hrsAbove350>

- P1Y-hrsAbove400 (Number of hours with values higher than 400 (unit) in given year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-hrsAbove400>

## 5.5 Three consecutive values Above a Threshold

Some exceedance-based indicators are designed to detect persistent pollution episodes, rather than isolated exceedances. These metrics quantify the number of periods per year in which three consecutive valid values (either hourly or daily) exceed a specified limit value (LV) or an Assessment Threshold (AT).

A valid exceedance event is defined as a group of at least three consecutive valid time steps (hours or days) where each concentration value exceeds the predefined threshold. These indicators are referred to as:

- P1Y–3hAboveX: number of periods in a year with 3 consecutive hourly values above the predefined threshold;

- P1Y–3daysAboveX: number of periods in a year with 3 consecutive daily values above the predefined threshold.

In both cases, each continuous block of exceedances is counted only once, regardless of its length (e.g. 5 consecutive exceedances still count as one event).

These values shall be rounded before testing (see Chapter 6).

Formally, an exceedance event is identified when:

*C<sub>t</sub> \> LV & C<sub>t-1</sub> \> LV & C<sub>t-2</sub> \> LV*

Where:

*C<sub>t</sub>​* is the concentration at time *t* (hour or day)

The aggregates calculated using this method are:

- P1Y-3daysAbove50 (Number of periods when 3 consecutive days are higher than 50 in a given year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-3daysAbove50>

- P1Y-3daysAbove90 (Number of periods when 3 consecutive days are higher than 90 in a given year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-3daysAbove90>

- P1Y-3hAbove200 (Number of periods when 3 consecutive hours are higher than 200 in a given year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-3hAbove200>

- P1Y-3hAbove350 (Number of periods when 3 consecutive hours are higher than 350 in a given year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-3hAbove350>

- P1Y-3hAbove400 (Number of periods when 3 consecutive hours are higher than 400 in a given year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-3hAbove400>

- P1Y-3hAbove500 (Number of periods when 3 consecutive hours are higher than 500 in a given year):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-3hAbove500>

## 5.6 Kth highest value (maxk)

The **Kth highest value** is defined as the concentration value ranked Kth in descending order from the highest valid measurement within a given period (e.g., a calendar year). Formally, given the ordered sequence of valid concentrations:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p><em>X<sub>1</sub> ≥ X<sub>2</sub> ≥ X<sub>3</sub> ≥ … ≥ <strong>X<sub>k</sub></strong> ≥ … ≥ X<sub>N1</sub> ≥ X<sub>N</sub></em></p>
</blockquote></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

The *k<sup>th</sup>* highest value is the concentration *X<sub>k</sub>* evaluated in descending order from the maximum (1<sup>st</sup> is the highest). The 4<sup>th</sup>, 25<sup>th</sup>, 19<sup>th</sup>, 26<sup>th</sup> and 36<sup>th</sup> highest values (maxk) are important to air quality regulations (see Table 3).

It should be noted that values flagged as invalid (Validity \< 1) or missing are excluded from the ranking.

The aggregates calculated using this method are:

- P1Y-day-max4 (SO<sub>2</sub>, 4<sup>th</sup> daily highest value):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-day-max4>

- P1Y-hr-max19 (NO<sub>2</sub>, 19<sup>th</sup> hourly highest value):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-hr-max19>

- P1Y-hr-max25 (SO<sub>2</sub>, 25<sup>th</sup> hourly highest value):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-hr-max25>

- P1Y-dx-max26 (O<sub>3</sub>, 26<sup>th</sup> P8H-dmax highest value):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-dx-max26>

- P1Y-day-max36 (PM<sub>10</sub>, 36<sup>th</sup> daily highest value):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-day-max36>

## 5.7 Percentiles

Percentiles are statistical indicators that provide information about the distribution of concentration values, especially in the upper tail, and are mainly applied in the context of assessment thresholds defined under the Ambient Air Quality Directives.

The yᵗʰ percentile is defined as the concentration value below which *y* percent of the valid values fall. It is calculated based on ranked valid measurement values:

*X<sub>1</sub> ≤ X<sub>2</sub> ≤ X<sub>3</sub> ≤ … ≤ **X<sub>k</sub>** ≤ … ≤ X<sub>N-1</sub> ≤ X<sub>N</sub>*

The index *k* corresponding to the yᵗʰ percentile is given by:

*k = (q.N)*

*where:*

- q = y/100

- N is the number of valid values within the calendar year

The value of *k* is then **rounded to the nearest integer**, using the following rule:

- If the decimal component of *k* is \< 0.5, round down.

- If ≥ 0.5, round up.

If *k* falls below 1, the first ranked value is returned; if *k* exceeds *N*, the last value is returned.

This method provides a robust estimation even when the percentile rank does not fall exactly on an integer position.

<div class="admonition aura-example">
<p class="admonition-title">Example 6. Code in R to calculate percentiles</p>
<div class="aura-example-body">
<p><em>calculate_defined_percentile &lt;- function(values, y) {</em></p>
<p><em># Filter valid values (not NA)</em></p>
<p><em>valid_values &lt;- na.omit(values)</em></p>
<p><em># Sort values in increasing order</em></p>
<p><em>sorted_values &lt;- sort(valid_values)</em></p>
<p><em>N &lt;- length(sorted_values)</em></p>
<p><em>q &lt;- y / 100</em></p>
<p><em>k &lt;- q * N</em></p>
<p><em># Round k to the nearest integer</em></p>
<p><em>rounded_k &lt;- ifelse(k - floor(k) == 0.5, ceiling(k), round(k))</em></p>
<p><em># Bound the index to the valid range</em></p>
<p><em>if (rounded_k &lt; 1) {</em></p>
<p><em>rounded_k &lt;- 1</em></p>
<p><em>} else if (rounded_k &gt; N) {</em></p>
<p><em>rounded_k &lt;- N</em></p>
<p><em>}</em></p>
<p><em>return(sorted_values[rounded_k])</em></p>
<p><em>}</em></p>
</div>
</div>

Aggregates calculated in this way:

- P1Y-hr-per50 (All pollutants, hourly median):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-hr-per50>

- P1Y-hr-max-per99.73 (SO<sub>2</sub>, 25<sup>th</sup> hourly highest value):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-hr-max-per99.73>

- P1Y-hr-max-per99.79 (NO<sub>2</sub>, 19<sup>th</sup> hourly highest value):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-hr-max-per99.79>

- P1Y-hr-max-per99.97 (SO<sub>2</sub> - NO<sub>2</sub>, 4<sup>th</sup> hourly highest value):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-hr-max-per99.97>

- P1Y-day-per50 (All pollutants, daily median):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-day-per50>

- P1Y-day-max-per99.18{ref}`[18] <footnote-18>` (SO<sub>2</sub>, 4<sup>th</sup> daily highest value):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-day-max-per99.18>

- P1Y-P1D-per90.4 (PM<sub>10</sub>, AQ Directive 2008/50, 36th daily highest value)

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-P1D-per90.4>

- P1Y-P1D-per90.41 (PM<sub>10</sub>, 36th daily highest value)

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-P1D-per90.41>

- P1Y-P1D-per95.07 (PM<sub>10</sub>, PM<sub>2.5</sub>, CO, SO<sub>2</sub>, NO<sub>2</sub>, 19th daily highest value)

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-P1D-per95.07>

- P1Y-P1D-per99 (PM<sub>10</sub>, PM<sub>2.5</sub>, CO, SO<sub>2</sub>, NO<sub>2</sub>, O<sub>3</sub>, WHO guidelines)

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-P1D-per99>

- P1Y-dmax-per93.15 (O<sub>3</sub>, 26<sup>th</sup> P8H-dmax highest value):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-dmax-per93.15>

- P1Y-dmax-per95.07 (O<sub>3</sub>, 19<sup>th</sup> P8H-dmax highest value):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-dmax-per95.07>

- P1Y-dmax-per99 (O<sub>3</sub>, WHO guidelines):

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P1Y-dmax-per99>

## 5.8 AOT40 (only O<sub>3</sub>)

AOT40 is the cumulative concentration observed above 80 µg/m<sup>3</sup> of O<sub>3</sub> (= 40 parts per billion; ppb) based on hourly measurements. There are currently 2 different AOT40 to be calculated:

- **AOT40c** (vegetation protection; crops) – 1 May to 31 July

- **AOT40f** (forest protection) – 1 April to 30 September

For each of these AOT, two statistics shall be calculated in order to obtain a final AOT40 for compliance:

- AOT40<sub>measured</sub>

- AOT40<sub>estimate</sub> (= final)

Only hourly concentrations between 08:00 and 20:00 Central European Time (CET) are considered. **AOT40<sub>measured</sub> is calculated as follows** (See also Chapter 4.5):

$${AOT40}_{measured} = \sum_{i\ (8 - 20\ CET)}^{}{AOT40h} = \ \sum_{i\ (8 - 20\ CET)}^{}{max\left\{ 0,\left( C_{i} - 80 \right) \right\}}$$

where *C<sub>i</sub>* is the hourly mean ozone concentration in µg/m<sup>3</sup> and the summation is to the period 08.00 – 20.00 Central European Time each day in a certain time period{ref}`[19] <footnote-19>`.

For AOT40c the time period is the 3-month growing season of crops: from 1 May to 31 July each year. For the AOT40f, the time period is 1 April to 30 September.

AOT40 has a unit of (µg/m<sup>3</sup>)·hours and is sensitive to missing values. **<u>The required proportion of valid data is 85% of the hourly values</u>**{ref}`[20] <footnote-20>` over the time period defined for calculating the AOT40 value. Therefore, *AOT40<sub>measured</sub>* shall be routinely corrected to full time coverage to derive *AOT40<sub>estimate</sub>* as follows:

$${AOT40}_{estimate} = \ \frac{{AOT40}_{measured} \cdot N_{period}}{N_{valid}}$$

where *N<sub>valid</sub>* is the number of valid hourly values and *N<sub>period</sub>* is the number of hours in the period (1104 hours for AOT40c and 2196 for AOT40f).

### 5.8.1 Numberof valid hours for AOT40 (AOT40-nv)

In order to process AOT40, the number of valid hourly values need to be calculated. This will depend on whether the AOT40 is calculated for the protection of vegetation or the forest protection:

- Number of valid hours for AOT40c (**AOT40c-nv**)[^19]: Count the number of valid hourly (flag 1, 2, 3 or 4) between *StartTime* ≥ 07:00 UTC and *EndTime* ≤ 19:00 UTC (or *StartTime* \>= 08:00 UTC+01 and *EndTime* \<= 20:00 UTC+01) between 1<sup>st</sup> May and 31<sup>th</sup> July.

- Number of valid hours for AOT40f (AOT40f-nv)[^20]: Count the number of valid hourly values (flag 1, 2 or 3) between *StartTime* ≥ 07:00 UTC and *EndTime* ≤ 19:00 UTC (or *StartTime* \>= 08:00 UTC+01 and *EndTime* \<= 20:00 UTC+01) between 1<sup>st</sup> April and 31<sup>st</sup> September.

### 5.8.2 AOT40 for vegetation protection (AOT40c)

For the AOT40 vegetation (AOT40c) the time period is the 3-month growing season for crops: from 1<sup>st</sup> May to 31<sup>th</sup> July each year. It is calculated as follows:

$$AOT40c = \frac{AOT40c_{measured}}{AOT40c\_ nv}*1104$$

where AOT40c<sub>measured</sub> is the sum of all AOT40h in this period.

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/AOT40c>

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/AOT40cmeasured>

### 5.8.3 AOT40 for forest protection (AOT40f)

For the AOT40 forest (AOT40f) the time period is from 1<sup>st</sup> April to 30<sup>th</sup> September each year. It is calculated as follows:

$$AOT40f = \frac{AOT40f_{measured}}{AOT40c\_ nv}*2196$$

where AOT40f<sub>measured</sub> is the sum of all AOT40h in this period

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/AOT40f>

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/AOT40fmeasured>

### 5.8.4 AOT40 for vegetation protection averaged over 5 years

AOT40c is also averaged over 5 years. For this calculation, at least 3 years must have valid AOT40c.

A year shall be included in the 5-year average of the AOT40c if the data coverage is higher than 85% achieved for the hours between 08:00 and 20:00 CET in this year (939 hours).

<http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/AOT40c-P5Y>

## 5.9 SOMO35 and SOMO10 (Only O₃)

To support the quantification of health impacts, the **SOMO35** (Sum of Ozone Means Over 35 ppb) and **SOMO10** (Sum of Ozone Means Over 10 ppb) indicators are used, as recommended by the World Health Organization.

These indicators are based on daily maximum 8-hour running mean ozone concentrations, and represent the accumulated excess above predefined thresholds. The units are (µg/m³)·days.

- **SOMO35** is defined as the sum of the differences between daily maximum 8-hour running mean concentrations above a threshold of **70 µg/m³ (35 ppb)**:

${SOMO35}_{measured} = \Sigma_{i}\max\{ 0,\left( C_{i} - 70 \right)\}$

- **SOMO10** is calculated analogously using a threshold of **20 µg/m³ (10 ppb)**:

$${SOMO10}_{measured} = \Sigma_{i}\max\{ 0,\left( C_{i} - 20 \right)\}$$

Where:

- *C<sub>i</sub>*  is the daily maximum 8-hour running mean ozone concentration in µg/m³;

- The summation is over all days of the calendar year with valid data.

Both indicators are sensitive to missing data, and a correction is applied to account for incomplete time series. The correction follows the WHO recommendation and consists of scaling the measured value by the number of valid data:

$$SOMOX = \frac{SOMOX_{measured} \cdot N_{period}}{N_{valid}}$$

Where:

- *N<sub>valid</sub>* is the number of valid daily values available;

Aggregates calculated in this way:

- SOMO35: <http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/SOMO35>

- SOMO10: <http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/SOMO10>

## 5.10 Multi-Annual Aggregates

Multi-annual indicators are computed to provide a more robust assessment of air quality trends and exceedance patterns over time. These aggregates are calculated using three consecutive calendar years, based on the annual indicators defined in Directive (EU) 2024/2881, and in accordance with the vocabulary maintained by the EEA.

**The 3-year average is calculated between 1st January of year X–2 and 31st December of year X**

### 5.10.1 P3Y (3-Year Average of Annual Means)

This indicator represents the arithmetic mean of the annual mean concentrations over three consecutive years, for a given air pollutant and sampling point.

Let *M<sub>i</sub>*<sub>​</sub> denote the annual mean concentration in year *i*, the P3Y value is calculated as:

$$P3Y = \ \frac{\sum_{i = 1}^{n}M_{i}}{n}$$

where <sub>n</sub> is the number of years with valid annual means.{ref}`[23] <footnote-23>`

Aggregate:

- P3Y (3-Year Average of Annual Means):

> <http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P3Y>

### 5.10.2 P3Y-dmaxAbove120

This indicator applies only to ozone (O₃). It reflects the average number of days per year in which the daily maximum of the 8-hour running average (P8H-dmax) exceeds 120 µg/m³, calculated over a rolling 3-year period.

For each year, the number of exceedance days is determined using the aggregate P1Y-dmaxAbove120 (see Chapter 5.4). The 3-year indicator is then the average of the valid annual counts:

$$P3Y - dmaxAbove120 = \ \frac{\sum_{i = 1}^{n}D_{i}}{n}$$

where *D<sub>i</sub>​* is the number of days exceeding 120 µg/m³ in year *i*, and *n* is the number of valid years.

Aggregate:

- P3Y-dmaxAbove120 (Number of days with daymax values higher than 120 µg/m³ averaged over 3 years):

> <http://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/P3Y-dmaxAbove120>

## 5.11 Average Exposure Indicator (AEI) (PM<sub>2.5</sub> and NO<sub>2</sub>)

In the 2024/2881 Directive, the methodology for calculating the Average Exposure Indicator (AEI) remains consistent with that defined in Part A of Annex XIV of Directive 2008/50/EC. The AEI shall be assessed as a three-calendar-year running annual mean concentration averaged over all relevant sampling points. However, Directive (EU) 2024/2881 introduces significant updates regarding the selection of sampling points and the pollutants covered.

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><strong>KEY NOTE FOR EEA DEVELOPERS</strong></p>
<p><em>AEI statistics are calculated at national level, disaggregated by Average Exposure Territorial Unit (AETU). At SamplingPoint level, the annual mean (e.g. P1Y-mean) and its associated data capture value must be calculated and retained.</em></p></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

**Key changes introduced by Directive (EU) 2024/2881:**

- The AEI shall be calculated both for PM₂.₅ and NO₂.

- The AEI shall be based on measurements taken at urban background locations in each Average Exposure Territorial Unit (AETU) throughout the Member State.

- In AETUs where no urban area is located, measurements at rural background locations shall be used.

- AEI is to be used for assessing whether the average exposure reduction obligation and the average exposure concentration objective have been met, per pollutant and territorial unit.

- Where exceedances are identified as being attributable to natural sources, such contributions shall be deducted prior to AEI calculation.

Then, the average of the annual concentrations across all AEI monitoring stations{ref}`[24] <footnote-24>` within each AETU shall be computed for each calendar year. The AEI is obtained as the arithmetic mean of the three yearly values (i.e. the reporting year and the two previous years). All aggregation operations must be performed using the full numeric precision of the data; rounding to one decimal place shall be applied only after all aggregation steps are completed.

To ensure transparent and unambiguous calculation for the reported AEI, the following shall be observed:

> • calculate the annual average PM2.5 concentration at each AEI monitoring station, applying the criteria laid down in Annex XI.A of Dir. 2008/50/EC for each year (or its corresponding successor provisions).
>
> • calculate the average over all AEI monitoring stations within the member state for each year
>
> • calculate the average over three years (the reporting year and the two previous years)

The set of AEI stations must remain stable across years and established in accordance with Point B of Annex III of Directive (EU) 2024/2881. Any changes in the AEI network are strongly discouraged and must be submitted.

Where data coverage is below 90% for any given year, it is recommended to follow the methodology developed by the AQUILA network{ref}`[25] <footnote-25>` to ensure comparability and robustness of the results. AEI concentration thresholds should be presented with one decimal precision, in line with the practice already recommended under the previous Directive, e.g., 8.5, 13.0, 18.0 and 22.0 µg/m³.

## 5.12 National Exposure Reduction Target (NERT)

The National Exposure Reduction Target (NERT) according to the Directive 2008/50/EC, Annex I, Section B will be established based on the first reporting of AEI. According to the Member States, difficulties were encountered in calculating the first AEI mainly because it was not possible to attain 90% data capture for all sites for various reasons (e.g. insufficient time to choose the monitoring sites and to install the equipment). Due to the importance of having a basis for establishing the NERT, AQUILA has produced guidance recommending<sup>18</sup> how to deal with the AEI when minimum requirement for data capture is not fulfilled for some stations. Therefore, if minimum data capture was not achieved in the years needed to establish the baseline AEI, it is recommended to follow the procedure developed by AQUILA. Other procedures/methods may be used if they are well documented \[e.g., Spanish Royal Decret 102/2011\].

For example, if the average exposure indicator of one member state is equal to 16.4 µg/m<sup>3</sup>, this value has to be compared with the initial concentration threshold of 18.0 µg/m<sup>3</sup> to establish the reduction target.

## 5.13 Average Exposure Reduction Obligation (AERO)

In accordance with Article 13 and Annex XIV, Part B of Directive (EU) 2024/2881, the *Average Exposure Reduction Obligation* (AERO) is assessed per average exposure territorial unit (AETU) for the pollutants PM₂.₅ and NO₂, based on the evolution of the Average Exposure Indicator (AEI) over a ten-year period.

The AERO expresses the required reduction in population exposure over time. It is established by comparing the AEI calculated for a target year with the AEI of the reference base year, set ten years prior. The assessment is pollutant-specific and applies to each AETU independently.

The AEI used in this comparison must be calculated in accordance with the methodology described in Chapter 5.11 and based on measurements at all urban background sampling points, or rural background sampling points if no urban areas exist within the AETU, as established in Point B of Annex III of the Directive.

**Determination of the reference AEI (base year)**

- The reference AEI is the three-year running mean for the base year, defined as the calendar year ten years prior to the target year.

- For instance, in the reporting year 2030, the reference AEI corresponds to the average over 2018, 2019, and 2020.

- As per the Directive, Member States may opt to exclude data from 2020 in the calculation of the reference AEI, due to the exceptional conditions caused by the COVID-19 pandemic. In such cases, the reference AEI shall be based on the average of 2017, 2018, and 2019.

**Determination of the AEI in the target year**

- The AEI in the target year is also computed as the three-year running mean for that year (e.g., for 2030, average of 2028, 2029, and 2030), following the same data quality and station selection criteria.

For implementation purposes, the AEI shall be rounded to one decimal place only after all aggregation steps have been completed. The set of AEI monitoring stations used for both the base and target AEI calculations must remain stable and consistent over time; any changes to the monitoring network must be duly justified and submitted.

When calculating the levels for the years 2030, 2031 and 2032, Member States may exclude the year 2020 from the calculation of the AEI for the base year.
