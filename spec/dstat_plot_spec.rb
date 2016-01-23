# dstat_plot_spec.rb

require 'dstat_plot'

RSpec.describe 'dstat_plot', "#create_gnuplot_dataset" do
  context "clean input" do
    it "creates a gnuplot dataset" do
      gp_dataset = create_gnuplot_dataset (timecode, values, no_plot_key, file)
      expect(gp_dataset).to eq(45)
    end
  end

  describe "#analyze_header_create_plot_title" do
    it "analyzes header and creates a plot title" do
      
    end
  end
end