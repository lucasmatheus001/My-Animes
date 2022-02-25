$( document ).ready(async function() {
    console.log('⚡ CustomJS Started');
    
    // You Code Javascript
    
      // let result = await getAllTracksAndArtist()
      // let tracks = result.tracks
      // tracks.data.map(track => renderTrack(track))
      $("#inputSearch").on("change", function() {
        let search = $(this).val();
        $.ajax({
            url: `/animes/search?q=${search}`,
            type: "GET"
        })
        console.log(search)
        if (search === '') {
          let track_list = document.querySelector('.search-box');
          track_list.innerHTML = ``
        }
      })

  });
  
window.goBackInitialTracks = function goBackInitialTracks(event) {
    if (event.target.value === '') {
      let result =  getAllTracksAndArtist()
      let tracks = result.tracks
      let track_list = document.querySelector('#track_list');
      track_list.innerHTML = ``
      tracks.data.map(track => renderTrack(track))
    }
};
  