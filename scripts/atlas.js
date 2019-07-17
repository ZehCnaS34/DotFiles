const fs = require("fs");
const path = require("path"); 
const configurationPath = path.resolve(process.env.HOME, ".zehc.json");
const workspacesPath = path.resolve(process.env.HOME, "workspaces");

const defaultZehCConfiguration = {
  projectsLocations: [],
};

if (!fs.existsSync(configurationPath)) {
  fs.writeFileSync(
    configurationPath,
    JSON.stringify(defaultZehCConfiguration, null, 2)
  );
}

const configuration = require(configurationPath);

module.exports = {
  configuration,
  workspacesPath
};
