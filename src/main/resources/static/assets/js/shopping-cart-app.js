const app = angular.module('shopping-cart-app',[]);
app.controller('shopping-cart-ctrl', function($scope, $http){
	
	/* QUẢN LÝ GIỎ HÀNG */ 
	$scope.cart = {
		items:[],
		
		// add to cart
		add(id){
			var item = this.items.find(item => item.id == id);
			if(item){ // nếu sản phẩm có trong giỏ hàng thì tăng số lượng
				item.quantity++;
				this.saveToLocalStorage();
			} else{ // ngược lại nếu chưa có sản phẩm trong giỏ hàng thì số lượng = 1
				$http.get(`/rest/products/${id}`).then(resp => {
					resp.data.quantity = 1;
					this.items.push(resp.data);
					this.saveToLocalStorage();
				});
			}
		},
		
		// delete 
		remove(id){
			var index = this.items.findIndex(item => item.id == id);
			this.items.splice(index, 1);
			this.saveToLocalStorage();
		},
		
		// clear
		clear(){
			this.items = [];
			this.saveToLocalStorage();
		},
		
		// money/product
		atm_of(item){
			
		},
		
		// total count
		get count(){
			return this.items
				.map(item => item.quantity)
				.reduce((total, quantity) => total += quantity, 0);
		},
		
		// money/total product
		get amount(){
			return this.items
				.map(item => item.quantity * item.price)
				.reduce((total, quantity) => total += quantity, 0);
		},
		
		// save to local storage
		saveToLocalStorage(){
			var json = JSON.stringify(angular.copy(this.items));
			localStorage.setItem("cart", json);
		},
		// read local storage
		loadFromLocalStorage(){
			var json = localStorage.getItem("cart");
			this.items = json ? JSON.parse(json) : [];
		}
	}
	
	$scope.cart.loadFromLocalStorage();
	
	
	$scope.order = {
		createDate : new Date(),
		address : "",
		account : {username:$('#username').text().trim()},
		get orderDetails(){
			return $scope.cart.items.map(item => {
				return {
					product : {id:item.id},
					price : item.price,
					quantity : item.quantity
				}
			})
		},
		purchase(){
			var order = angular.copy(this);
			//thực hiện đặt hàng
			$http.post("/rest/orders", order).then(resp => {
				alert("Đặt hàng thành công!");
				$scope.cart.clear();
				location.href = "/order/detail/" + resp.data.id;
			}).catch(error => {
				alert("Đặt hàng thất bại!");
				console.log(error);
			});
		}
	}


	// $scope.pageSize = 5;
    // $scope.start = 0;
    // $scope.pageIndex = 0;

    // $scope.next = function () {
    //     if ($scope.start < $scope.items.length - $scope.pageSize) {
    //         $scope.start += $scope.pageSize;
    //         $scope.pageIndex++;
    //     }
    // }
    // $scope.prev = function () {
    //     if ($scope.start > 0) {
    //         $scope.start -= $scope.pageSize;
    //         $scope.pageIndex--;
    //     }
    // }
    // $scope.first = function () {
    //     $scope.start = 0;
    //     $scope.pageIndex = 0;
    // }
    // $scope.last = function () {
    //     sotrang = Math.ceil($scope.items.length / $scope.pageSize);
    //     $scope.start = $scope.pageSize * (sotrang - 1);
    //     $scope.pageIndex = $scope.count() - 1;
    // }
    // $scope.count = function(){
    //     return Math.ceil(1.0 * $scope.items.length / $scope.pageSize);
    // }
	
})