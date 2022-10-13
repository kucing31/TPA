//Penyambungan API dengan website
const apiKey = '19af4d92246d7f25f909d99a29d7e336';
const urlList = `https://api.themoviedb.org/3/discover/movie?api_key=${apiKey}&sort_by=popularity.desc`;


function getUrlSearch(query) {
  return `https://api.themoviedb.org/3/search/movie?api_key=${apiKey}&query=${query}&page=1`;
}

//Inisialisasi penempatan data
const contentplace = document.getElementById('card-container');
document.getElementById('carifilm').addEventListener('keydown', function (e) {
  if (e.keyCode === 13) {
    search();
  }
});

// Function Search
async function search() {
  const isicarifilm = document.getElementById('carifilm').value;

  if (isicarifilm !== '' || isicarifilm !== ' ') {
    const datAPI = await fetch(getUrlSearch(isicarifilm));
    const hasil = await datAPI.json();
  
    const datafilm = hasil.results;

    if (Array.isArray(datafilm)) {
      contentplace.innerHTML = '';
  
      datafilm.forEach(function (movie) {
        const div = document.createElement('div');
        div.classList.add('card');
        div.innerHTML = `
        <img src="https://image.tmdb.org/t/p/w500${movie.poster_path}" alt="${movie.title} class="card-img-top">
        <div class="card-body">
          <div>
            <h5 class="card-title">${movie.title}</h5>
            <p class="card-text">${movie.release_date}</p>
          </div>
          <div>
            <p class="vote">${movie.vote_average}</p>  
          </div>
        </div>
        `;
        contentplace.appendChild(div);
      });
    };
  }
}


async function main() {
  const datAPI = await fetch(urlList);
  const hasil = await datAPI.json();

  const datafilm = hasil.results;

  contentplace.innerHTML = '';

  datafilm.forEach(function (movie) {
    const div = document.createElement('div');
    div.classList.add('card');
    div.innerHTML = `
      <img src="https://image.tmdb.org/t/p/w500${movie.poster_path}" alt="${movie.title} class="card-img-top">
      <div class="card-body">
        <div>
          <h5 class="card-title">${movie.title}</h5>
          <p class="card-text">${movie.release_date}</p>
        </div>
        <div>
        <p class="vote">${movie.vote_average}</p>  
        </div>
      </div>
    `;
    contentplace.appendChild(div);
  });
}

main();

