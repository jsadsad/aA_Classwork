import React from 'react';

class Clock extends React.Component {
    constructor() {
        super();
        let date = new Date();
        this.state = {
            seconds : date.getSeconds(),
            minutes : date.getMinutes(),
            hours : date.getHours(),
            date: date.toDateString()
            // date: date.getDate(),
            // month: date.getMonth(),
            // year: date.getFullYear(),
            // day: date.getDay()
        }
    }

    componentDidMount() {
        setInterval(this.tick.bind(this), 1000);
    }

    componentWillUnmount() {
        clearInterval(this)
    }

    render() {
        const { date, seconds, minutes, hours } = this.state;
        return (
            <>
                <h1>Time: {hours}:{minutes}:{seconds}</h1>
                <h1>Date: {date}</h1>
            </>
        )
    }

    tick() {
        this.incrementSeconds();
    }

    incrementSeconds() {
        this.setState({seconds: this.state.seconds + 1})
        if (this.state.seconds === 60) {
            this.setState({seconds : 0})
            this.incrementMinutes();
        }
    }

    incrementMinutes() {
        this.setState({ minutes: this.state.minutes + 1 })
        if (this.state.minutes === 60) {
            this.setState({ minutes : 0 })
            this.incrementHours();
        }
    }

    incrementHours() {
        this.setState({ hours: (this.state.hours + 1 ) % 24 })
    }
}

export default Clock;