# dstat_plot_spec.rb

require 'dstat_plot'

RSpec.describe 'dstat_plot', "#create_gnuplot_dataset" do
  it "creates a gnuplot dataset" do
      test = 5
      expect(test).to eq(5)
      # gp_dataset = create_gnuplot_dataset ()
      # expect(gp_dataset).to eq(45)
  end

  describe "#analyze_header_create_plot_title" do
    context "with inversion"
      it "analyzes header and creates a plot title" do
        CSV.read("../example.csv") do |csv|
          csv_header = csv[0..6]
        end
        prefix = "Prefix"
        plot_title = analyze_header_create_plot_title(prefix, false, csv_header)
        expect(plot_title).to eq('Prefix over time \n(Host: TestHost User: Garg Date: 10 Jul 2015 13:41:47 CEST)')
      end
    end
  end
end
