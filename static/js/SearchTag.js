const searchField = document.querySelector("#searchBar");
const tableOutput = document.querySelector(".table-output");
const tbody = document.querySelector(".table-body");
const appTable = document.querySelector(".app-table");
tableOutput.style.display = "none";
const noResults = document.querySelector(".no-results");

searchField.addEventListener("keyup", (e) => {
    const searchValue = e.target.value;
    if(searchValue.trim().length>0){
        tbody.innerHTML = "";
        

        fetch("TagSearch/", {
            body: JSON.stringify({searchText: searchValue}),
            method: "POST",
        })
        .then((res) => res.json())
        .then((data) => {
            console.log("data",data);
            appTable.style.display = "none";
            tableOutput.style.display = "block";

            if(data.length == 0){
                noResults.style.display = "block";
                tableOutput.innerHTML = "No Results found";
            }
            else{
                noResults.style.display = "none";
                data.forEach((item)=>{
                    if(item.first_name){
                        tbody.innerHTML += `
                        <div class="card">
                            <div class="card-image waves-effect waves-block waves-light">
                                <img class="activator" src="/media/${item.pro_pic}">
                            </div>
                            <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">${item.first_name} ${item.last_name} <i class="material-icons right">${item.state}</i></span>
                            <p><a href="Profile/${item.username}">Profile</a></p>
                            </div>
                         <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">${item.first_name} ${item.last_name}<i class="material-icons right">close</i></span>
                            <p>${item.intro}</p>
                        </div>
                    </div>
                        `;
                    }
                    });        
                    
            }
        });
    }
    else{
        tableOutput.style.display= 'none';
        appTable.style.display = "block";
        
    }


    });

  
