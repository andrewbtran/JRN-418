---
layout: page
title: Google Sheets embed
---

    <script type="text/javascript" src="http://omnipotent.net/jquery.sparkline/contrib/jquery/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="http://omnipotent.net/jquery.sparkline/2.0/jquery.sparkline.js"></script>

    <script type="text/javascript">
    $(function() {
        /** This code runs when everything has been loaded on the page */
        /* Inline sparklines take their values from the contents of the tag */
        $('.inlinesparkline').sparkline(); 

        /* Sparklines can also take their values from the first argument 
        passed to the sparkline() function */
        var myvalues = [10,8,5,7,4,4,1];
        $('.dynamicsparkline').sparkline(myvalues);

        /* The second argument gives options such as chart type */
        $('.dynamicbar').sparkline(myvalues, {type: 'bar', barColor: 'green'} );

        /* Use 'html' instead of an array of values to pass options 
        to a sparkline with data in the tag */
        $('.inlinebar').sparkline('html', {type: 'bar', barColor: 'red'} );
    });
    </script>

<style>/*styles for graphic info (hed, subhed, source, credit)*/
.rg-container {
	font-family: Helvetica, Arial, sans-serif;
	font-size: 16px;
	line-height: 1;
	margin: 0;
	padding: 1em 0;
	color: #1a1a1a;
}
.rg-header {
	margin-bottom: 1em;
}
.rg-hed {
	font-family: "Benton Sans Bold", Helvetica, Arial, sans-serif;
	font-weight: bold;
	font-size: 1.35em;
	margin-bottom: 0.25em;
}
.rg-subhed {
	font-size: 1em;
	line-height: 1.4em;
}
.rg-source-and-credit {
	font-family: Georgia,"Times New Roman", Times,serif;
	width: 100%;
	overflow: hidden;
	margin-top: 1em;
}
.rg-source {
	margin: 0;
	float: left;
	font-weight: bold;
	font-size: 0.75em;
	line-height: 1.5em;
}
.rg-source .pre-colon {
	text-transform: uppercase;
}
/*styles for graphic*/
table.rg-table {
	margin: 0 0 1em 0;
	width: 100%;
	font-family: Helvetica, Arial, sans-serif;
	font-size: 1em;
	border-collapse: collapse;
	border-spacing: 0;
}
table.rg-table * {
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
	text-align: left;
	color: #333;
}
table.rg-table thead {
	border-bottom: 1px solid rgba(195,195,197,.3);
}
table.rg-table th {
	font-weight: bold;
	padding: 0.5em;
	font-size: 0.85em;
	line-height: 1.4;
}
table.rg-table td {
	padding: 0.5em;
	font-size: 0.9em;
	line-height: 1.4;
}
table.rg-table .highlight td {
	font-weight: bold;
}
table.rg-table tr {
	border-bottom: 1px solid rgba(195,195,197,.3);
	color: #222;
}
table.rg-table .number {
	text-align: right;
}
table.rg-table.zebra tr:nth-child(even) {
	background: rgba(195, 195, 197, 0.1);
}
table.rg-table tr.highlight {
	background: #edece4;
}
@media screen and (max-width: 500px) {
.rg-container {
	max-width: 500px;
	margin: 0 auto;
}
table.rg-table {
	display: block;
	width: 100%;
}
table.rg-table tr.hide-mobile, table.rg-table th.hide-mobile, table.rg-table td.hide-mobile {
	display: none;
}
table.rg-table thead {
	display: none;
}
table.rg-table tbody {
	display: block;
	width: 100%;
}
table.rg-table td:last-child {
	padding-right: 0;
	border-bottom: 2px solid #ccc;
}
table.rg-table tr, table.rg-table th, table.rg-table td {
	display: block;
	padding: 0;
}
table.rg-table td[data-title]:before {
	content: attr(data-title) ":A0";
	font-weight: bold;
	display: inline-block;
	content: attr(data-title);
	float: left;
	margin-right: 0.5em;
	font-size: 0.95em;
}
table.rg-table tr {
	border-bottom: none;
	margin: 0 0 1em 0;
	padding: 0.5em 0;
}
table.rg-table tr:nth-child(even) {
	background: none;
}
table.rg-table td {
	padding: 0.5em 0 0.25em 0;
	border-bottom: 1px dotted #ccc;
	text-align: right;
}
table.rg-table td:empty {
	display: none;
}
table.rg-table .highlight td {
	background: none;
}
table.rg-table tr.highlight {
	background: none;
}
table.rg-table.zebra tr:nth-child(even) {
	background: none;
}
table.rg-table.zebra td:nth-child(even) {
	background: rgba(195, 195, 197, 0.1);
}
}
</style>
<div class="rg-container">
	<div class="rg-header">
		<div class="rg-hed">Hed</div>
		<div class="rg-subhed">Subhed goes here.</div>
	</div>
	<div class="rg-content">
		<table class="rg-table">
			<thead>
				<th class="text rg-th">club</th>
				<th class="number rg-th">2010</th>
				<th class="number rg-th">2011</th>
				<th class="number rg-th">2012</th>
				<th class="number rg-th">2013</th>
				<th class="text rg-th">2014</th>
				<th class="text rg-th">Change</th>
			</thead>
			<tbody>
				<tr>
						<td class="text" data-title="club">aaron</td>
						<td class="number" data-title="2010">234</td>
						<td class="number" data-title="2011">45</td>
						<td class="number" data-title="2012">34</td>
						<td class="number" data-title="2013">100</td>
						<td class="text" data-title="2014">300</td>
						<td class="text" data-title="Change"><span class="inlinebar">1,3,4,5,3,5</span></td>
				</tr>
				<tr>
						<td class="text" data-title="club">michael</td>
						<td class="number" data-title="2010">23</td>
						<td class="number" data-title="2011">2</td>
						<td class="number" data-title="2012">23</td>
						<td class="number" data-title="2013">150</td>
						<td class="text" data-title="2014">10</td>
						<td class="text" data-title="Change"><span class="inlinebar">1,3,4,5,3,5</span></td>
				</tr>
				<tr>
						<td class="text" data-title="club">michelle</td>
						<td class="number" data-title="2010">23</td>
						<td class="number" data-title="2011">345</td>
						<td class="number" data-title="2012">12</td>
						<td class="number" data-title="2013">200</td>
						<td class="text" data-title="2014">200</td>
						<td class="text" data-title="Change"><span class="inlinebar">1,3,4,5,3,5</span></td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="rg-source-and-credit">
		<div class="rg-source"><span class="pre-colon">SOURCE</span>: <span class="post-colon">Sources</span></div>
	</div>
</div>