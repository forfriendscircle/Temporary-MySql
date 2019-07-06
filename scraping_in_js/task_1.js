/////////////// Task1 /////////////////////////

const cheerio = require('cheerio')
const data_link = require('request-promise')

data_link('https://www.imdb.com/india/top-rated-indian-movies/')
.then(data=>{
    let s = cheerio.load(data)
    // console.log(s.html());
    let titleColumn = s('.titleColumn')
    // console.log(titleColumn);
    let Data = (titleColumn.text()).split('\n');
    // console.log(Data);
    let movies_name = [];
    for (var i=2; i<Data.length; i+=4){
        // console.log(Data[i]);
        let name = Data[i];
        movies_name.push(name);
    }
    let position_list = [];
    for (var j=1; j<Data.length; j+=4){
        let position = (Data[j]);
        position_list.push(position);
    }  
    // console.log(position_list)

    let year_list = [];
    for (var k=3; k<Data.length; k+=4){
        let year = (Data[k]);
        year_list.push(year.trim());
    } 
    // console.log(year_list)

    let rate =s(".ratingColumn");
    // console.log(rate);
    let rating_list = [];
    let rating = (rate.text().split("\n"));
    for (var k of rating){
        // console.log(k)
        if (k.includes(".")){
            let m = k.trim();
            rating_list.push(parseFloat(m));
        }
    }
    // console.log(rating_list); 

    let link = s(".titleColumn");
    let link_list = [];
    link.find("a").each((index, element)=>{
        let total_link =('https://www.imdb.com'+s(element).attr('href').slice(0,17));
        // console.log(complete)  
        link_list.push(total_link)      

    })
// console.log(link_list)

let top_movies=[];
for (let i=0; i<position_list.length; i++){
    let Movie={
        "name":movies_name[i],
        "year":year_list[i],
        "position":position_list[i],
        "url":link_list[i],
        "rating":rating_list[i]
    }
    // console.log(Movie);
    top_movies.push(Movie);
}
// console.log(top_movies);
// return(top_movies);





/////////////////////// task-2 /////////////////////

// console.log("Hello")
var uni_list=[]
for (var j of year_list){
  if(uni_list.includes(j)==false){
    uni_list.push(j)
  }
}
// console.log(uni_list);
var rev_dic={}
for (k of uni_list){
  var  list1=[]
  for(l of top_movies){
    var y = l['year']
    // console.log(y);
    if(k==y){
      list1.push(l);
      rev_dic[k]=list1
    }
  }
}
// console.log("hello")
  console.log(rev_dic);



})
.catch(err=>{
    console.log("something went wrong")
})