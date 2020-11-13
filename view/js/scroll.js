"use strict"

function jump_to_closest_to_end_actv() {
    const ativities = document.querySelectorAll('.actv-slider--pratice .actv-slider__actv')

    let dates = []

    ativities.forEach(actv => {
        const time_child = actv.children[0].children[2]
        
        const end_date_str = time_child.innerText
        const end_date = "2020-"+ end_date_str.slice(9, 11) + '-' + end_date_str.slice(6,8)  

        dates.push([end_date, actv])
    })
    const now = new Date()

    let closest = Infinity

    dates.forEach(date => {
        const current = new Date(date[0])

        if (current >= now && (current < new Date(closest) || current < closest)) {
            closest = date;
        }
    })
    const slider = document.querySelector('.actv-slider')

    let space_to_jumping_one
    if (innerWidth <= 760) {
        space_to_jumping_one = innerWidth*0.80
    } else {
        space_to_jumping_one = innerWidth*0.20
    }

    slider.scrollLeft = closest[1].offsetLeft + space_to_jumping_one
}

function jump_to_closest_to_start_live() {
    const ativities = document.querySelectorAll('.actv-slider--lives .actv-slider__actv')

    let dates = []

    ativities.forEach(actv => {
        const time_child = actv.children[0].children[2]

        const start_date_str = time_child.innerText
        const start_date = "2020-" + start_date_str.slice(3) + '-' + start_date_str.slice(0,2)  

        dates.push([start_date, actv])
    })

    const now = new Date()

    let closest = Infinity

    dates.forEach(date => {
        const current = new Date(date[0])

        if (current >= now && (current < new Date(closest) || current < closest)) {
            closest = date;
        }
    })

    const slider = document.querySelector('.actv-slider--lives')
    slider.scrollLeft = closest[1].offsetLeft
}

function slideTo(side, type) {
    let slider

    if (type == 'P') {
        slider = document.querySelector('.actv-slider')   
    } else {
        slider = document.querySelector('.actv-slider--lives')   
    }

    if (side == 'right') {
        slider.scrollLeft += 150
    } else {
        slider.scrollLeft -= 150
    }
}

jump_to_closest_to_end_actv()
jump_to_closest_to_start_live()