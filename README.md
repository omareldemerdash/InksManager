# InksManager
Web app to manage the quantities of inks and cartridges for printers.

Run for the first time:

1- install node_modules

    npm install
2- run docker compose
        
    docker-compose up -d
    
  -d (detached mode) runs the containers in the background without attaching them to your terminal.
  
  --build this will forces build new image
3- open the browser and open
        
    http://localhost:3000
to stop the containers

    docker-compose down
    
  -v to remove volumes and networks
