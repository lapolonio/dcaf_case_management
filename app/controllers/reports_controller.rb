# Controller for automatically generated service reporting across lines.
class ReportsController < ApplicationController
  def index
    printf "show controller called"
    # render js: "alert('The number is: #{params[:id]}')"
  end
  #
  # def report
  #   case params[:timeframe]
  #   when 'weekly'
  #     @report = Reports::LineSummary.generate(1.week.ago, Date.today)
  #     render partial: "patient_report", locals: {report: @report, lines: LINES, timeframe: params[:timeframe] }
  #
  #   when 'monthly'
  #     @report = Reports::LineSummary.generate(1.month.ago, Date.today)
  #     render partial: "patient_report", locals: {report: @report, lines: LINES, timeframe: params[:timeframe] }
  #
  #   when 'yearly'
  #     @report = Reports::LineSummary.generate(1.year.ago, Date.today)
  #     render partial: "patient_report", locals: {report: @report, lines: LINES, timeframe: params[:timeframe]}
  #
  #   when 'test'
  #     render partial: "test_report", locals: {report: @report, lines: LINES, timeframe: params[:timeframe]}
  #   end
  # end
  #
  def show

  end

  def totals
    value = 3642 # Some expensive database query
    render js: "$('#dashboard-totals').html('#{value}')"
  end
end
