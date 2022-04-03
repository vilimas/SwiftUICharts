//
//  File.swift
//  
//
//  Created by Will Dale on 23/01/2021.
//

import SwiftUI

/**
 Data set for a bar chart.
 */
public struct BarDataSet: CTStandardBarChartDataSet, DataFunctionsProtocol {
    
    public let id: UUID = UUID()
    public var dataPoints: [BarChartDataPoint]
    public var markerType: BarMarkerType
    
    public init(
        dataPoints: [BarChartDataPoint],
        markerType: BarMarkerType = .full(colour: .primary, style: StrokeStyle())
    ) {
        self.dataPoints = dataPoints
        self.markerType = markerType
    }
    
    public typealias ID = UUID
    public typealias DataPoint = BarChartDataPoint
    
    /// Initialises a new data set for standard Bar Charts.
    /// - Parameters:
    ///   - dataPoints: Array of elements.
    ///   - legendTitle: label for the data in legend.
    @available(*, deprecated, message: "\"legendTitle\" has been depricated")
    public init(
        dataPoints: [BarChartDataPoint],
        legendTitle: String
    ) {
        self.dataPoints = dataPoints
        self.markerType = .none
        self.legendTitle = legendTitle
    }
    
    @available(*, deprecated, message: "depricated")
    public var legendTitle: String = ""
}
