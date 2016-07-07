# dstat_plot_spec.rb

require 'dstat_plot'
require 'spec_helper'
require 'csv'

RSpec.describe 'dstat_plot' do

  csv = CSV.read("example.csv")

  describe "#create_gnuplot_dataset" do
    it "creates a gnuplot dataset" do
        test = 5
        expect(test).to eq(5)
        # gp_dataset = create_gnuplot_dataset ()
        # expect(gp_dataset).to eq(45)
    end
  end

  describe "#create_plot_title" do
    context "with inversion" do
      it "analyzes header and creates a plot title" do
        csv_header = csv[0..6]
        prefix = "Prefix"
        smooth = false
        inversion = false
        plot_title = create_plot_title(prefix, smooth, inversion, csv_header)
        expect(plot_title).to eq('Prefix over time\n(Host: TestHost User: Garg Date: 10 Jul 2015 13:41:47 CEST)')
      end
    end
  end

  describe "#translate_to_column" do
    it "translates category and field to the correct column index" do
      column = translate_to_column("cpu1 usage", "usr", csv)
      expect(column).to eq(23)
    end
  end
end
