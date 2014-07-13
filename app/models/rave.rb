class Rave < Prawn::Document
	include ActionView::Helpers::NumberHelper

	def print_rave
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
		font "DejaVuSans", size: 8



		def mass_index(growth, weight)

			mass_index = (weight / (growth ** 2)).round(4)
			text "Growth: #{growth.to_s} m"
			text "\nWeight: #{weight.to_s} kg"
			text "\nMass index: #{weight} / (#{growth} * #{growth}) = #{mass_index.to_s}"

			too_low = 18.5
			low = 18.5..19.99
			normal = 20..24.99
			many = 25..30
			too_many = 30

			if mass_index < too_low
				text 'Too low', size: 15, character_spacing: 3, color: 'ff0000'

			elsif low.include? mass_index
				text 'Low', size: 15, character_spacing: 3, color: 'ff8c00'

			elsif normal.include? mass_index
				text 'Normal', size: 15, character_spacing: 3, color: '00ff00'

			elsif many.include? mass_index
				text 'Many', size: 15, character_spacing: 3, color: '00008b'

			elsif mass_index > too_many
				text 'Too many', size: 15, character_spacing: 3, color: '8b4513'

			end

		end

		mass_index 1.73, 60
		move_down 30
		mass_index 1.49, 40
		move_down 30
		mass_index 1.56, 48
		move_down 30
		mass_index 1.88, 90
		move_down 30
		mass_index 1.75, 130

		render

	end

end