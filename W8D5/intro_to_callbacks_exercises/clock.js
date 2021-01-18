class Clock {
    constructor() {
        // 1. Create a Date object.

            const currentTime = new Date();

        // 2. Store the hours, minutes, and seconds.

            this.hours = currentTime.getHours();
            this.minutes = currentTime.getMinutes();
            this.seconds = currentTime.getSeconds();

        // 3. Call printTime.

        

        // 4. Schedule the tick at 1 second intervals.
    }

    printTime() {
        // Format the time in HH:MM:SS
        // Use console.log to print it.
        console.log(`${this.hours}:${this.minutes}:${this.seconds}`);
    }

    _tick() {
        this.seconds += 1
        if (this.seconds === 60) {
            this.seconds = 0;
            this.minutes += 1;
        }

        if (this.minutes === 60) {
            this.minutes = 0;
            this.hours += 1;
        }

        if (this.hours === 24) {
            this.hours = 0;
        }

        return this.printTime();

        // 1. Increment the time by one second.
        // 2. Call printTime.
    }
}

const clock = new Clock();