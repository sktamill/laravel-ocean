<template>
  <div>
      <div class="create">
          <textarea :class="broder" v-model="data" placeholder="Add Predictions with Divider |"></textarea>
          <div class="success" v-if="success">{{ success.message }}</div>
          <button @click.prevent="createPrediction" class="btn btn-primary d-block w-25 m-auto mt-3">Add Predictions</button>
      </div>
      <div class="about">
          <p>Add any predictions with separator "|".</p>
          <p>Example text:</p>
          <p>Your loyalty is a virtue, but not when it's wedded with blind stubbornness|</p>
          <p>Humor usually works at the moment of awkwardness|</p>
          <p>Your first love has never forgotten you</p>
      </div>
  </div>
</template>

<script>
export default {
    name: "PredictionAdd",

    data(){
        return{
            data: null,
            success: null,
            broder: null
        }
    },

    methods:{
        createPrediction(){
            if(this.data) {
                axios.post('/api/create', {data: this.data})
                    .then(res => {
                        this.success = res.data
                        this.data = null
                        this.broder = 'black';
                    })
            }else{
                this.broder = 'red';
                this.success = null;
            }
        }
    }
}
</script>

<style>
    div.create{text-align: center; margin-top: 50px; }
    div.create textarea{width: 40%; height: 150px; padding: 15px; font-size: 14px; border: 1px solid #eaeaea; outline: none;}
    div.create textarea:focus{border: 1px solid #545454;}
    div.create button{font-size: 15px;}
    div.create .success{font-weight: bold; font-size: 15px; margin-top: 20px; color: #0a53be;}
    div.create .red{border: 1px solid red;}
    div.create .black{border: 1px solid #545454;}
    div.about{width: 50%; margin:50px auto; border-top: 1px dotted #ccc; font-size: 14px; color: #333;}
</style>
