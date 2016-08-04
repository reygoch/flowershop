$.get(root + '/report', reportSetup);

const months =
	['January', 'February', 'March', 'April', 'May', 'June',
	'July', 'August', 'September', 'October', 'November', 'December'];

function reportSetup(data) {
	let reportMonths = data['reportMonths'].map(nameMonths);
	let finalReport = months.map(filler(reportMonths));

	let reportData = {
		labels : months,
		datasets : [{
			label : "Monthly Sales",
			data : finalReport.map(x => x.total),
			borderColor : 'red'
		}]
	}

	new Chart(
		$('#report'),
		{data : reportData, type : 'line'}
	);

	console.log(finalReport);
}

function nameMonths(monthData) {
	return {
		month : months[parseInt(monthData['month']) - 1],
		total : monthData['total']
	}
}

function filler(reportMonths) {
	return function (month) {
		let fit = reportMonths.filter(x => x['month'] == month)[0];
		return {month : month, total : fit != null ? fit['total'] : 0};
	}
}