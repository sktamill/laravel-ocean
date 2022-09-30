<template>
    <div class="link">
        <div class="navbar_link">
            <router-link class="menu" :to="{name: 'prediction.index'}">Prediction</router-link>
            <router-link class="menu" :to="{name: 'prediction.add'}">Create-Prediction</router-link>
        </div>
            <router-view class="mt-3"></router-view>
    </div>
</template>

<script>
export default {
    name: "Index",

}
</script>

<style scoped>
    div.link .navbar_link {text-align: center;}
    div.link .navbar_link .menu{text-align: center; font-size: 18px; font-weight: bold; color:blue; text-decoration: none; padding: 5px 20px; background-color: #eaeaea; margin:10px;}
    div.link .navbar_link .menu:hover{color:#fff; background-color: #4a5568; }
</style>
