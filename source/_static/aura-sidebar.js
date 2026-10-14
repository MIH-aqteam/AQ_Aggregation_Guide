/* AURA Aggregation Guide: chapter subsection navigation.
   Uses an independent left-side button, without interfering with RTD theme links. */
(function () {
  'use strict';
  var sections = {"02_raw_data": [{"level": 2, "label": "2.1 Data Delivery and Storage Architecture"}, {"level": 2, "label": "2.2 Structure of Parquet Files"}, {"level": 2, "label": "2.3 Storage of Key Attributes for Processing and Traceability"}, {"level": 3, "label": "2.3.1 Sampling Point as Primary Identifier"}, {"level": 3, "label": "2.3.2 Pollutant and Unit"}, {"level": 3, "label": "2.3.3 Temporal Boundaries of Observations"}, {"level": 3, "label": "2.3.4 Validity and Verification Flags"}], "03_preprocessing": [{"level": 2, "label": "3.1 Outlier Detection and Removal"}, {"level": 2, "label": "3.2 Overlap Resolution"}, {"level": 2, "label": "3.3 Handling of Variable Aggregation Types (var)"}, {"level": 2, "label": "3.4 Time Zone Adjustment"}, {"level": 2, "label": "3.5 Application of Validity and Verification Flags"}], "04_base_aggregations": [{"level": 2, "label": "4.1 Hour{ref}[8]"}, {"level": 2, "label": "4.2 Daily Average (P1D)"}, {"level": 2, "label": "4.3 8-hour running mean (P8H-run)"}, {"level": 2, "label": "4.4 Daily maximum 8-hour running mean (P8H-dmax)"}, {"level": 2, "label": "4.5 AOT40h"}], "05_statistics": [{"level": 2, "label": "5.1 Averages"}, {"level": 3, "label": "5.1.1 Calculation of Averages"}, {"level": 3, "label": "5.1.2 Winter and summer means"}, {"level": 2, "label": "5.2 Rolling Six-Month Averages"}, {"level": 2, "label": "5.3 Maximum and minimum"}, {"level": 2, "label": "5.4 Number of Exceedances Above a Threshold"}, {"level": 2, "label": "5.5 Three consecutive values Above a Threshold"}, {"level": 2, "label": "5.6 Kth highest value (maxk)"}, {"level": 2, "label": "5.7 Percentiles"}, {"level": 2, "label": "5.8 AOT40 (only O3)"}, {"level": 3, "label": "5.8.1 Numberof valid hours for AOT40 (AOT40-nv)"}, {"level": 3, "label": "5.8.2 AOT40 for vegetation protection (AOT40c)"}, {"level": 3, "label": "5.8.3 AOT40 for forest protection (AOT40f)"}, {"level": 3, "label": "5.8.4 AOT40 for vegetation protection averaged over 5 years"}, {"level": 2, "label": "5.9 SOMO35 and SOMO10 (Only O₃)"}, {"level": 2, "label": "5.10 Multi-Annual Aggregates"}, {"level": 3, "label": "5.10.1 P3Y (3-Year Average of Annual Means)"}, {"level": 3, "label": "5.10.2 P3Y-dmaxAbove120"}, {"level": 2, "label": "5.11 Average Exposure Indicator (AEI) (PM2.5 and NO2)"}, {"level": 2, "label": "5.12 National Exposure Reduction Target (NERT)"}, {"level": 2, "label": "5.13 Average Exposure Reduction Obligation (AERO)"}], "06_exceedances": [{"level": 2, "label": "6.1 Exceedance of thresholds based on calendar year, winter mean, and maximum daily 8-h mean aggregated statistics"}, {"level": 2, "label": "6.2 Number of hours or days with exceedance"}, {"level": 2, "label": "6.3 Number of three consecutive hours with exceedance"}, {"level": 2, "label": "6.4 Accessing aggregated statistics"}], "07_data_coverage": [{"level": 2, "label": "7.1 Definitions"}, {"level": 3, "label": "7.1.1 Data capture (Dcap)"}, {"level": 3, "label": "7.1.2 Time coverage (TC)"}, {"level": 3, "label": "7.1.3 Data coverage (DC)"}, {"level": 2, "label": "7.2 Calculation algorithms"}, {"level": 3, "label": "7.2.1 Calculations for hourly and daily data types{ref}[29]"}, {"level": 3, "label": "7.2.2 ### Calculations from base aggregation data"}, {"level": 3, "label": "7.2.3 Missing data fractions arising from maintenance and calibration"}], "annex_a": [{"level": 2, "label": "Environmental objectives and reporting metrics (valid until 31 December 2029)"}, {"level": 2, "label": "Environmental objectives and reporting metrics (applicable from 1 January 2030)"}], "annex_b": [{"level": 2, "label": "Assessment threshold (valid until 31 December 2029)"}, {"level": 2, "label": "Assessment threshold (applicable from 1 January 2030)"}], "footnotes": [{"level": 2, "label": "Footnote 1"}, {"level": 2, "label": "Footnote 2"}, {"level": 2, "label": "Footnote 3"}, {"level": 2, "label": "Footnote 4"}, {"level": 2, "label": "Footnote 5"}, {"level": 2, "label": "Footnote 6"}, {"level": 2, "label": "Footnote 7"}, {"level": 2, "label": "Footnote 8"}, {"level": 2, "label": "Footnote 9"}, {"level": 2, "label": "Footnote 10"}, {"level": 2, "label": "Footnote 11"}, {"level": 2, "label": "Footnote 12"}, {"level": 2, "label": "Footnote 13"}, {"level": 2, "label": "Footnote 14"}, {"level": 2, "label": "Footnote 15"}, {"level": 2, "label": "Footnote 16"}, {"level": 2, "label": "Footnote 17"}, {"level": 2, "label": "Footnote 18"}, {"level": 2, "label": "Footnote 19"}, {"level": 2, "label": "Footnote 20"}, {"level": 2, "label": "Footnote 21"}, {"level": 2, "label": "Footnote 22"}, {"level": 2, "label": "Footnote 23"}, {"level": 2, "label": "Footnote 24"}, {"level": 2, "label": "Footnote 25"}, {"level": 2, "label": "Footnote 26"}, {"level": 2, "label": "Footnote 27"}, {"level": 2, "label": "Footnote 28"}, {"level": 2, "label": "Footnote 29"}, {"level": 2, "label": "Footnote 30"}]};

  function slug(value) {
    return value.toLowerCase().normalize('NFKD')
      .replace(/[\u0300-\u036f]/g, '')
      .replace(/\{ref\}\[\d+\]/g, '')
      .replace(/[^\w\s-]/g, '').trim().replace(/\s+/g, '-');
  }

  function init() {
    var nav = document.querySelector('.wy-menu-vertical');
    if (!nav) return;

    // The RTD theme sometimes inserts its menu-expansion button into
    // the custom PDF link. Remove only that button, never chapter toggles.
    function cleanPdfLink() {
      nav.querySelectorAll('a.aura-pdf-link > button.toctree-expand').forEach(function (button) {
        button.remove();
      });
    }
    cleanPdfLink();
    var pdfObserver = new MutationObserver(function () {
      cleanPdfLink();
    });
    pdfObserver.observe(nav, { childList: true, subtree: true });
    nav.querySelectorAll('li.toctree-l1 > a').forEach(function (link) {
      var href = link.getAttribute('href') || '';
      var basename = href.split('#')[0].split('?')[0].split('/').pop().replace(/\.html$/, '');
      var items = sections[basename];
      if (!items || !items.length) return;
      var parent = link.parentElement;
      if (parent.classList.contains('aura-has-subsections')) return;
      parent.classList.add('aura-has-subsections');

      var list = document.createElement('ul');
      list.className = 'aura-subsections';
      list.style.setProperty('display', 'none', 'important');
      list.id = 'aura-subsections-' + basename;

      items.forEach(function (entry) {
        var item = document.createElement('li');
        item.className = 'aura-subsection-level-' + entry.level;
        var anchor = document.createElement('a');
        anchor.textContent = entry.label;
        anchor.href = href.split('#')[0] + '#' + slug(entry.label);
        item.appendChild(anchor);
        list.appendChild(item);
      });
      parent.appendChild(list);

      var button = document.createElement('button');
      button.type = 'button';
      button.className = 'aura-subsection-toggle';
      button.textContent = '+';
      button.setAttribute('aria-label', 'Expand subsections of ' + link.textContent.trim());
      button.setAttribute('aria-controls', list.id);
      button.setAttribute('aria-expanded', 'false');
      button.addEventListener('click', function (event) {
        event.preventDefault();
        event.stopImmediatePropagation();
        event.stopPropagation();
        var open = button.getAttribute('aria-expanded') !== 'true';
        button.setAttribute('aria-expanded', String(open));
        button.setAttribute('aria-label', (open ? 'Collapse' : 'Expand') + ' subsections of ' + link.textContent.trim());
        button.textContent = open ? '−' : '+';
        list.style.setProperty('display', open ? 'block' : 'none', 'important');
        parent.classList.toggle('aura-open', open);
      }, true);
      parent.insertBefore(button, link);
    });
  }
  if (document.readyState === 'loading') document.addEventListener('DOMContentLoaded', init);
  else init();
})();
