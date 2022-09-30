import Vue from "vue";
import VueRouter from "vue-router";

Vue.use(VueRouter)

const router = new VueRouter({

    mode: 'history',

    routes:[
        {
            path: '/', component: () => import('./components/Prediction'),
            name: 'prediction.index'
        },
        {
            path: '/add', component: () => import('./components/PredictionAdd'),
            name: 'prediction.add'
        },
    ]

})

export default router
