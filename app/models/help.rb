class Help < Prawn::Document
  include ActionView::Helpers::NumberHelper

  def print_help
    font_families.update(
      "DejaVuSans" => {
        normal: "#{Rails.root}/app/assets/fonts/DejaVuSans.ttf",
        bold: "#{Rails.root}/app/assets/fonts/DejaVuSans-Bold.ttf",
        italic: "#{Rails.root}/app/assets/fonts/DejaVuSans-Oblique.ttf",
        bold_italic: "#{Rails.root}/app/assets/fonts/DejaVuSans-BoldOblique.ttf",
        extra_light: "#{Rails.root}/app/assets/fonts/DejaVuSans-ExtraLight.ttf",
        condensed: "#{Rails.root}/app/assets/fonts/DejaVuSansCondensed.ttf",
        condensed_bold: "#{Rails.root}/app/assets/fonts/DejaVuSansCondensed-Bold.ttf"
      })
    font "DejaVuSans", size: 20

    draw_text 'ООО "Экстра"', at: [350, cursor]
    move_down 10

    text "#{Date.parse('1st day of this month').strftime('%d.%m.%Y')} - " +
      "#{Date.today.end_of_month.strftime('%d.%m.%Y')}", align: :right
    move_down 250

    text 'Форма 103', size: 30, align: :center

    start_new_page

    draw_text 'ООО "Экстра"', at: [350, cursor]
    move_down 10

    text "#{Date.parse('1st day of this month').strftime('%d.%m.%Y')} - " +
      "#{Date.today.end_of_month.strftime('%d.%m.%Y')}", align: :right
    move_down 250

    text 'Предварительный реестр банковских переводов', size: 20, align: :center

    start_new_page

    draw_text 'ООО "Экстра"', at: [350, cursor]
    move_down 10

    text "#{Date.parse('1st day of this month').strftime('%d.%m.%Y')} - " +
      "#{Date.today.end_of_month.strftime('%d.%m.%Y')}", align: :right
    move_down 250

    text 'Предварительный реестр банковских переводов', size: 20, align: :center

    start_new_page

    draw_text 'ООО "Экстра"', at: [350, cursor]
    move_down 10

    text "#{Date.parse('1st day of this month').strftime('%d.%m.%Y')} - " +
      "#{Date.today.end_of_month.strftime('%d.%m.%Y')}", align: :right
    move_down 250

    text 'Возвраты', size: 20, align: :center

    start_new_page    

    text 'ООО МНПФ "Центр Новые Технологии"', align: :right
    move_down 15

    draw_text "#{Date.parse('1st day of this month').strftime('%d.%m.%Y')} - " +
      "#{Date.today.end_of_month.strftime('%d.%m.%Y')}", at: [220, cursor]
    move_down 250

    text 'Форма 103', size: 30, align: :center

    start_new_page

    draw_text 'ИП Сорокина', at: [350, cursor]
    move_down 10

    text "#{Date.parse('1st day of this month').strftime('%d.%m.%Y')} - " +
      "#{Date.today.end_of_month.strftime('%d.%m.%Y')}", align: :right
    move_down 250

    text 'Форма 103', size: 30, align: :center

    start_new_page

    draw_text 'ИП Фалалеев', at: [355, cursor]
    move_down 10

    text "#{Date.parse('1st day of this month').strftime('%d.%m.%Y')} - " +
      "#{Date.today.end_of_month.strftime('%d.%m.%Y')}", align: :right
    move_down 250

    text 'Форма 103', size: 30, align: :center

    render

  end

end
