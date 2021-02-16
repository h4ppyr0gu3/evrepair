// Initialize all input of date type.
import bulmaCalendar from 'bulma-extensions/bulma-calendar/dist/js/bulma-calendar.min.js';
const calendars = bulmaCalendar.attach('[type="date"]');

// Loop on each calendar initialized
calendars.forEach(calendar => {
	// Add listener to select event
	calendar.on('select', date => {
		console.log(date);
	});
});

// To access to bulmaCalendar instance of an element
const element = document.querySelector('#datepicker');
if (element) {
	// bulmaCalendar instance is available as element.bulmaCalendar
	element.bulmaCalendar.on('select', datepicker => {
		console.log(datepicker.data.value());
	});
}