//
//  LineDataSet.swift
//  
//
//  Created by Will Dale on 23/01/2021.
//

import SwiftUI

/**
 Data set for a single line
 
 Contains information specific to each line within the chart .
 */
public struct LineDataSet: CTLineChartDataSet, DataFunctionsProtocol {
    
    public let id: UUID = UUID()
    public var dataPoints: [LineChartDataPoint]
    public var markerType: LineMarkerType
    public var style: LineStyle
    
    public init(
        dataPoints: [LineChartDataPoint],
        markerType: LineMarkerType = .full(attachment: .line, colour: .primary, style: StrokeStyle()),
        style: LineStyle = LineStyle()
    ) {
        self.dataPoints = dataPoints
        self.markerType = markerType
        self.style = style
    }
    
    @available(*, deprecated, message: "\"PointStyle\" and \"legendTitle\" has been depricated")
    public init(
        dataPoints: [LineChartDataPoint],
        legendTitle: String = "",
        pointStyle: PointStyle = PointStyle(),
        style: LineStyle = LineStyle()
    ) {
        self.dataPoints = dataPoints
        self.pointStyle = pointStyle
        self.markerType = .none
        self.style = style
    }
    
    @available(*, deprecated, message: "Please use \".pointMarkers\" instead")
    public var pointStyle = PointStyle()
    @available(*, deprecated, message: "depricated")
    public var legendTitle = ""
}
