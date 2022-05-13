import SwiftUI
import SwiftUICharts

struct ChartsView: View {
    var body: some View {
        TabView {
            LineChartView(data: [6, 9, 3, 5, 10, 8, 5], title: "Line Chart")
                .tabItem {
                    Image(systemName: "chart.xyaxis.line")
                    Text("Line")
                }
            
            BarChartView(data: ChartData(values: [
                ( "Mon", 12 ),
                ( "Tue", 9 ),
                ( "Wed", 4 ),
                ( "Thu", 6 ),
                ( "Fri", 10 ),
                ( "Sat", 15 ),
                ( "Sun", 6 )
            ]), title: "Bar Chart")
            .tabItem {
                Image(systemName: "chart.bar.xaxis")
                Text("Bar")
            }
            
            PieChartView(data: [22, 17, 32, 99, 78, 65], title: "Pie Chart")
                .tabItem {
                    Image(systemName: "chart.pie.fill")
                    Text("Pie")
                }
            
            MultiLineChartView(data: [
                ([8, 32, 11, 23, 40, 28, 50], GradientColors.green),
                ([90, 99, 78, 111, 70, 60, 77], GradientColors.purple),
                ([34, 56, 72, 38, 46, 80, 50], GradientColors.orange)
            ], title: "Multi Line Chart")
                .tabItem {
                    Image(systemName: "line.3.horizontal.circle")
                    Text("Multi Line")
                }
            
            LineView(data: [6, 9, 3, 5, 10, 8, 5], title: "Line View")
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis.circle")
                    Text("Line View")
                }
        }
    }
}

struct ChartsView_Previews: PreviewProvider {
    static var previews: some View {
        ChartsView()
    }
}
