<template>
  <div>
      <div id="sings">
          <div v-for="sing in sings" :key="sing.id">
            <p class="name">{{sing.name}}</p>
            <img :src="sing.image" :alt="sing.name" />
              <button @click.prevent="getPrediction(sing.id)" class="btn btn-primary d-block w-25 m-auto mt-3">Show Prediction</button>
            <div v-if="(prediction && id == sing.id)" class="mt-5">
                <p>{{ prediction.content }}</p>
                <p>{{ prediction.date }}</p>
            </div>
          </div>
      </div>
  </div>
</template>

<script>
export default {
    name: "Prediction",

    data(){
        return{
            sings: null,
            prediction: null,
            id: null
        }
    },

    mounted() {
        this.getSings()
    },

    methods:{
        getSings(){
            axios.get('/api/sings')
                .then(res => {
                    this.sings = res.data.data;
                })
        },
        getPrediction(id){
            axios.post('/api/prediction',{id: id})
                .then(res => {
                    this.prediction = res.data.data;
                    this.id = id
                })
        }

    }
}
</script>

<style >
    div#sings{text-align: center; width: 50%; margin: 0 auto; display: flex; flex-wrap: wrap; flex-direction: column; }
    div#sings > div{margin: 10px; border: 1px dotted #ccc; padding-top: 10px;}
    div#sings > div p{font-size: 16px; font-weight: bold; text-decoration: underline;}
</style>
