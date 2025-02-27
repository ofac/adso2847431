// Elements
const characters = document.querySelector('.characters')
const modal      = document.querySelector('.modal')
const btnClose   = document.querySelector('.btn-close')
const result     = document.querySelector('.result')

// Events
btnClose.addEventListener('click', function() {
    modal.classList.toggle('open')
})

// Fetch All Characters 
const fetchCaracters = async () => {
    for (let i=1; i<=40; i++) {
        const url = 'https://rickandmortyapi.com/api/character/'+i
        await fetch(url)
             .then((response) => response.json())
             .then((data) => {
                //console.log(data)
                characters.innerHTML += '<div class="character"> \
                                            <article> \
                                                <h4>'+data.name.substring(0, 16)+'</h4> \
                                                <h5 class="'+data.status+'">'+data.status+'</h5> \
                                                <button class="btn-show" data-id="'+data.id+'"> + info </button> \
                                            </article> \
                                            <img src="'+data.image+'"> \
                                        </div>'
            })
    }
    addClickEvents()
}

// Show Character
const showCaracter = async (id) => {
        const url = 'https://rickandmortyapi.com/api/character/'+id
        await fetch(url)
             .then((response) => response.json())
             .then((data) => {
                //console.log(data)
                result.innerHTML = '<article> \
                                        <p><b>Name:</b> '+data.name.substring(0, 16)+'</p> \
                                        <p class="'+data.status+'"><b>Status:</b> '+data.status+'</p> \
                                        <p><b>Especies:</b> '+data.species+'</p> \
                                        <p><b>Gender:</b> '+data.gender+'</p> \
                                        <p><b>Origin:</b> '+data.origin.name+'</p> \
                                        <p><b>Location:</b> '+data.location.name+'</p> \
                                    </article> \
                                    <img src="'+data.image+'">' 
            })
}

function addClickEvents() {
    const btnsShow = document.querySelectorAll('.btn-show')

    btnsShow.forEach(element => {
        element.addEventListener('click', function() {
            //alert(this.getAttribute('data-id'))
            showCaracter(this.getAttribute('data-id'))
            modal.classList.toggle('open')
        })
    })
}

fetchCaracters()