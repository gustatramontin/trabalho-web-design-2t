class StaticSlider {
    constructor() {
        this.blocks = document.querySelectorAll('.slide__new')
        this.visible = 0
        this.visible_class = 'slide__new--visible'
        this.blocks[this.visible].classList.add(this.visible_class)
    }

    moveTo(side) {
        if (side == 'right') {
            if (this.visible != (this.blocks.length-1)) {
                console.log('goes')

                this.blocks[this.visible].classList.remove(this.visible_class)
                this.visible += 1
                this.blocks[this.visible].classList.add(this.visible_class)
            }
        } else {
            if (!this.visible == 0) {
                this.blocks[this.visible].classList.remove(this.visible_class)
                this.visible -= 1
                this.blocks[this.visible].classList.add(this.visible_class)
            }
        }
    }
}

class SoftSlider {
    constructor() {
        this.activities_slider = document.querySelector('.actv-slider')
        this.lives_slider = document.querySelector('.actv-slider--lives')
        this.jump_to_closest_to_end_actv()
        this.jump_to_closest_to_start_live()   
    }

    jump_to_closest_to_end_actv() {
        const ativities = document.querySelectorAll('.actv-slider--pratice .actv-slider__actv')

        let dates = this.get_dates(ativities, [9,11], [6,8])

        let closest = this.closest_date(dates)

        const slider = document.querySelector('.actv-slider')

        let space_to_jumping_one
        if (innerWidth <= 760) {
            space_to_jumping_one = innerWidth*0.80
        } else {
            space_to_jumping_one = innerWidth*0.20
        }

        slider.scrollLeft = closest[1].offsetLeft + space_to_jumping_one
    }

    jump_to_closest_to_start_live() {
        const ativities = document.querySelectorAll('.actv-slider--lives .actv-slider__actv')

        let dates = this.get_dates(ativities, [3,5], [0,2])

        let closest = this.closest_date(dates)

        const slider = document.querySelector('.actv-slider--lives')

        slider.scrollLeft = closest[1].offsetLeft
    }

    closest_date(dates) {
        let closest = Infinity

        const now = new Date()

        dates.forEach(date => {
            const current = new Date(date[0])

            if (current >= now && (current < new Date(closest) || current < closest)) {
                closest = date;
            }
        })

        return closest
    }

    get_dates(slider, month_indexs, day_indexs) {

        let dates = []

        slider.forEach(actv => {
            const time_child = actv.children[0].children[2]
            
            const end_date_str = time_child.innerText
            const end_date = "2020-"+ end_date_str.slice(
                month_indexs[0], 
                month_indexs[1]) + 
                '-' + 
                end_date_str.slice(day_indexs[0], day_indexs[1])  

            dates.push([end_date, actv])
        })

        return dates
    }
    moveTo(side, type) {
        let slider

        if (type == 'P') {
            slider = this.activities_slider
        } else {
            slider = this.lives_slider 
        }

        if (side == 'right') {
            slider.scrollLeft += 150
        } else {
            slider.scrollLeft -= 150
        }
    }
}

const page = window.location.search.substr(1)

var soft_slider
var static_slider
if (page=='page=plano-de-ensino') {
    soft_slider = new SoftSlider()
} else {
    static_slider = new StaticSlider()

}

console.log(soft_slider)


