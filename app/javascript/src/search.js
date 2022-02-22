$( document ).ready(async function() {
    console.log('⚡ CustomJS Started');
    
    // You Code Javascript
    
      let result = await getAllTracksAndArtist()
      let tracks = result.tracks
      tracks.data.map(track => renderTrack(track))
  });
  
  async function searchForTracks() {
    
    let queryTracksInput = document.querySelector('#inputSearch').value
    if(queryTracksInput == '') return goBackInitialTracks()
    let response = await searchQuery(queryTracksInput)
    let track_list = document.querySelector('#track_list');
    track_list.innerHTML = ``
    response.data.map(track => renderTrack(track))
  
  }
  
  async function goBackInitialTracks(event) {
    if (event.target.value === '') {
      let result = await getAllTracksAndArtist()
      let tracks = result.tracks
      let track_list = document.querySelector('#track_list');
      track_list.innerHTML = ``
      tracks.data.map(track => renderTrack(track))
    }
  }
  

  const searchQuery = async (search) => await (await fetch(`https://api.jikan.moe/v4/anime?q=${search}&sfw`)).json();
  const getAllTracksAndArtist = async () => await (await fetch('https://api.jikan.moe/v4/anime')).json();
  const renderTrack = (track) =>{ 
    let track_list = document.querySelector('#track_list');
    track_list.innerHTML += `<div class="search-area">
        <div class="search-image">
            <img class="image img-fluid" src="${track.images.jpg.image_url}" style="height: 79px;">
            ${track.title}
        </div>
    </div>`
  }