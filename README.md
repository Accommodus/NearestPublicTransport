Dependencies:
  1)  Docker: If Docker is not installed, install Docker Desktop for Windows/Mac `https://www.docker.com/products/docker-desktop/` or install Docker Engine for linux `https://docs.docker.com/engine/install/`. Verify Docker is working by running the `docker --version` command in the terminal.
  2)  VS code: If VS code is not installed, install VS code `https://code.visualstudio.com/Download`
  3)  Dev Containers: In VS  code, if the Dev Containers extension is not installed and enabled, install and enable it. You can install Dev Containers in VS code by searching for Dev Containers in VS code's extensions tab, or by using this link `https://marketplace.visualstudio.com/items/?itemName=ms-vscode-remote.remote-containers`

Opening Dev Container:
  1)  run the command `git clone https://github.com/Accommodus/NearestPublicTransport.git` in the terminal
  2)  open the cloned repository folder in VS code. VS code should automatically detect the .devcontainer folder and prompt you to reopen in a Dev Container.
  3)  If not prompted by VS code, open the Command Palette `Ctrl+Shift+P or Cmd+Shift+P on macOS` and search for and select `Remote-Containers: Reopen in Container`

Downloading Data:
  1)  To download data, visit `https://geodata.bts.gov/datasets/usdot::national-transit-map-stops/explore?location=11.573261%2C60.750000%2C3.63`, click `Download` and then download the `GeoJSON` file
  2)  Once the data is downladed, drag and drop the .geojson data file into your `Dev Container Workspace`. To find the `Dev Container Workspace`, make sure your project is open in a `Dev Container`, then click the `Explorer` tab located in the top left.

Running .nim Files:
  1)  In VS code select the .nim file in the `Dev Container Workspace` you want to run and click the `run selected file` play button located in the top right
  2)  Then type `./filename` in the VS code terminal to run the file. If the file has a `isMainModule` section, then it will run the code in that section. Make sure to not include the `.nim` suffix when typing `./filename` into the terminal. We want to run the nim executable, not the nim file itself.
