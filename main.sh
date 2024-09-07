#!/bin/bash

# Create directories
mkdir ai-hospital-app frontend backend ai-model database scripts

# Initialize frontend
cd frontend
npx create-react-app 
cd ..

# Initialize backend
cd backend
npm init -y
npm install express mongoose nodemon cors

# Create necessary files in backend
mkdir src
touch src/controllers/index.js src/models/index.js src/routes/index.js

# Initialize AI model
cd ai-model
pip install tensorflow
touch model.py requirements.txt
cd ..

# Initialize database
cd database
touch db.js migrations/
cd ..

# Copy script
cp create-app.sh scripts/

# Install common dependencies
cd frontend
npm install react react-dom react-router-dom @emotion/react @emotion/styled
cd ..

# Install additional dependencies (optional)
cd frontend
npm install --save-dev eslint eslint-config-airbnb eslint-plugin-react
cd ..

# Configure eslint (optional)
cd frontend
npx eslint --init
cd ..

# Additional setup (optional)
# ... (add any other necessary setup steps here)

# Print completion message
echo "App creation completed successfully!"