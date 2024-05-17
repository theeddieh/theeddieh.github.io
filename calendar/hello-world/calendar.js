console.log("loading script");

const isLeapYear = (year) => {
    return (
        (year % 4 === 0 && year % 100 !== 0 && year % 400 !== 0) ||
        (year % 100 === 0 && year % 400 === 0)
    );
};

const getFebDays = (year) => {
    return isLeapYear(year) ? 29 : 28;
};

const month_names = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
];

const generateCalendar = (year) => {

    let days_of_month = [
        31,
        getFebDays(year),
        31,
        30,
        31,
        30,
        31,
        31,
        30,
        31,
        30,
        31,
    ];

    month_names.forEach((e, index) => {

        let month_box = '#' + e
        let month_days = document.querySelector(month_box);

        month_days.innerHTML = '';

        let first_day = new Date(year, index);

        for (let i = 0; i <= days_of_month[index] + first_day.getDay() - 1; i++) {

            let day = document.createElement('div'); // create calendar square

            if (i >= first_day.getDay()) {
                day.innerHTML = i - first_day.getDay() + 1; // write date in square
            }
            month_days.appendChild(day);
        }
    });
};

let currentDate = new Date();
let currentYear = { value: currentDate.getFullYear() };

console.log("generating calendar for", currentYear.value);

generateCalendar(currentYear.value);

