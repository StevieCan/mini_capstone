// var productTemplate = document.querySelector('#product-card');
// var productRowElement = document.querySelector('.row');

// axios.get("http://localhost:3000/api/products").then(function(response) {
//   var products = response.data;
  
//   products.forEach(function(product) {
//     var productClone = productTemplate.content.cloneNode(true);

//     productClone.querySelector(".card-title").innerText = product.name;
//     productClone.querySelector(".price").innerText = product.price;
//     productClone.querySelector(".description").innerText = product.description;
//     productClone.querySelector(".supplier").innerText = product.supplier['name'];
//     productClone.querySelector(".card-img-top").innerText = product.images[0]["url"];

//     productRowElement.appendChild(productClone);
  
//   });


// });

/* global Vue, VueRouter, axios */

var HomePage = {
  template: "#home-page",
  data: function() {
    return {
      message: "Welcome to Vue.js!"
    };
  },
  created: function() {},
  methods: {},
  computed: {}
};

var ProductsIndexPage = {
  template: "#products-index-page",
  data: function() {
    return {
      products: []
    };
  },
  created: function() {
    axios
      .get("/api/products")
      .then(function(response) {
        this.products = response.data;
      }.bind(this));
  },
  methods: {},
  computed: {}
};


var SamplePage = {
  template: "#sample-page",
  data: function() {
    return {
      message: "Welcome to the sample page!"
    };
  },
  created: function() {},
  methods: {},
  computed: {}
};

var SignupPage = {
  template: "#signup-page",
  data: function() {
    return {
      name: "",
      email: "",
      password: "",
      passwordConfirmation: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        name: this.name,
        email: this.email,
        password: this.password,
        supplier: this.passwordConfirmation
      };
      axios
        .post("/users", params)
        .then(function(response) {
          router.push("/login");
        })
        .catch(
          function(error) {
            this.errors = error.response.data.errors;
          }.bind(this)
        );
    }
  }
};



var LoginPage = {
  template: "#login-page",
  data: function() {
    return {
      email: "",
      password: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        auth: { email: this.email, password: this.password }
      };
      axios
        .post("/user_token", params)
        .then(function(response) {
          axios.defaults.headers.common["Authorization"] =
            "Bearer " + response.data.jwt;
          localStorage.setItem("jwt", response.data.jwt);
          router.push("/");
        })
        .catch(
          function(error) {
            this.errors = ["Invalid email or password."];
            this.email = "";
            this.password = "";
          }.bind(this)
        );
    }
  }
};

var ProductShowPage = {
  template: "#products-show-page",
  data: function() {
    return {
      product: {
        name: "Steve's Shoe",
        price: "200",
        description: "Best shoe in da biz"
      }
    };
  },
  created: function() {
    axios
    .get("/api/products/" + this.$route.params.id)
    .then(function(response) {
      this.recipe = response.data;
    }.bind(this));
  },
  methods: {},
  computed: {}
};


var ProductsNewPage = {
  template: "#products-new-page",
  data: function() {
    return {
      name: "",
      price: "",
      description: "",
      supplier: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        name: this.name,
        price: this.price,
        description: this.description,
        supplier_id: this.supplier_id
      };
      axios
        .post("/products", params)
        .then(function(response) {
          router.push("/#/");
        })
        .catch(
          function(error) {
            this.errors = error.response.data.errors;
          }.bind(this)
        );
    }
  }
};

var LogoutPage = {
  template: "<h1>Logout</h1>",
  created: function() {
    axios.defaults.headers.common["Authorization"] = undefined;
    console.log(localStorage.getItem("jwt"));
    localStorage.removeItem("jwt");
    console.log(localStorage.getItem("jwt"));
    console.log("It works");
    router.push("/");
  }
};

var router = new VueRouter({
  routes: [
    { path: "/", component: ProductsIndexPage },
    { path: '/sample', component: SamplePage },
    { path: "/signup", component: SignupPage },
    { path: "/login", component: LoginPage },
    { path: "/logout", component: LogoutPage },
    { path: "/products/new", component: ProductsNewPage },
    { path: "/products/:id", component: ProductShowPage }
  ],
  scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});



var app = new Vue({
  el: "#vue-app",
  router: router,
  created: function() {
    var jwt = localStorage.getItem("jwt");
    if (jwt) {
      axios.defaults.headers.common["Authorization"] = jwt;
    }
  }
});


