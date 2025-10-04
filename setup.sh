#!/bin/bash

echo "🚀 Setting up Credit Card Fraud Analysis Project"
echo "================================================"

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is required but not installed. Please install Python 3.10+ first."
    exit 1
fi

# Check if pip is available
if ! command -v pip &> /dev/null; then
    echo "❌ pip is required but not installed. Please install pip first."
    exit 1
fi

echo "✅ Python and pip found"

# Install dependencies
echo "📦 Installing Python dependencies..."
pip install -r requirements.txt

if [ $? -eq 0 ]; then
    echo "✅ Dependencies installed successfully"
else
    echo "❌ Failed to install dependencies"
    exit 1
fi

# Check if Jupyter is available
if ! command -v jupyter &> /dev/null; then
    echo "📔 Installing Jupyter Notebook..."
    pip install jupyter
fi

echo "🎉 Setup complete! You can now run:"
echo "   jupyter notebook project_demo.ipynb"
echo ""
echo "📊 Project structure:"
echo "   📁 data/ - Contains the RBI fraud dataset"
echo "   📁 images/ - Generated visualization plots"
echo "   📓 project_demo.ipynb - Main analysis notebook"
echo "   📄 README.md - Project documentation (GitHub Pages)"
echo ""
echo "🌐 After pushing to GitHub, enable Pages in Settings > Pages"