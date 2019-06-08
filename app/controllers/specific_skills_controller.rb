class SpecificSkillsController < ApplicationController
  def index
    pdf_filename = File.join(Rails.root, "public/特定技能について.pdf")
    send_file(pdf_filename, disposition: 'inline', filename: "特定技能について.pdf", type: "application/pdf")
  end
end
