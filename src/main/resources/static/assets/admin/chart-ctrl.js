const dataSource = {
    chart: {
        caption: "Countries With Most Oil Reserves [2017-18]",
        subCaption: "In MMbbl = One Million barrels",
        xAxisName: "Country",
        yAxisName: "Reserves (MMbbl)",
        numberSuffix: "K",
        theme: "fusion",
    },
    "data": chartData
};
app.controller('chart-ctrl', ['$scope', function($scope) {

    const chartData = [];
    

    // datasource
    $scope.myDataSource = dataSource
}]);