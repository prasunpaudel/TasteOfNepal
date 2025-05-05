<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Taste of Nepal - Ingredients Management</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #fbf5e9;
        }

        /* Header Styles */
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 20px;
            border-bottom: 1px solid #e0d6c2;
        }

        .logo {
            display: flex;
            align-items: center;
        }

        .logo img {
            height: 40px;
        }

        nav {
            display: flex;
            gap: 30px;
        }

        nav a {
            text-decoration: none;
            color: #000;
            font-weight: 500;
        }

        .logout-btn {
            background-color: #478c21;
            color: white;
            padding: 5px 15px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        /* Main Content Styles */
        main {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }

        .container {
            margin-bottom: 30px;
        }

        h2 {
            margin-bottom: 15px;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: 500;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            background-color: #dde1e7;
            border: none;
            border-radius: 3px;
        }

        .ingredient-row {
            display: flex;
            gap: 10px;
            margin-bottom: 10px;
        }

        .ingredient-row .form-group {
            flex: 1;
        }

        .btn {
            padding: 8px 15px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-weight: 500;
        }

        .btn-primary {
            background-color: #478c21;
            color: white;
        }

        .btn-secondary {
            background-color: #f0f0f0;
            color: #333;
        }

        .btn-danger {
            background-color: #dc3545;
            color: white;
        }

        .btn-sm {
            padding: 5px 10px;
            font-size: 0.9em;
        }

        /* Ingredients List */
        .ingredients-list {
            margin-top: 30px;
            background-color: white;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .ingredients-table {
            width: 100%;
            border-collapse: collapse;
        }

        .ingredients-table th,
        .ingredients-table td {
            padding: 10px 15px;
            text-align: left;
            border-bottom: 1px solid #eee;
        }

        .ingredients-table th {
            background-color: #f8f8f8;
        }

        .action-btns {
            display: flex;
            gap: 5px;
        }

        /* Alert Messages */
        .alert {
            padding: 10px 15px;
            border-radius: 3px;
            margin-bottom: 15px;
        }

        .alert-success {
            background-color: #d4edda;
            color: #155724;
            border: 1px solid #c3e6cb;
        }

        .alert-danger {
            background-color: #f8d7da;
            color: #721c24;
            border: 1px solid #f5c6cb;
        }

        /* Loader */
        .loader {
            border: 4px solid #f3f3f3;
            border-top: 4px solid #478c21;
            border-radius: 50%;
            width: 30px;
            height: 30px;
            animation: spin 2s linear infinite;
            margin: 20px auto;
            display: none;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">
            <img src="/api/placeholder/100/40" alt="Taste of Nepal Logo">
        </div>
        <nav>
            <a href="#">Product</a>
            <a href="#">Review</a>
            <a href="#">Users</a>
        </nav>
        <button class="logout-btn">Log Out</button>
    </header>

    <main>
        <div id="alertContainer"></div>
        
        <div class="container">
            <h2>Manage Ingredients</h2>
            <form id="ingredientForm">
                <input type="hidden" id="ingredientId" value="">
                
                <div class="form-group">
                    <label for="ingredientName">Ingredient Name</label>
                    <input type="text" id="ingredientName" class="form-control" required>
                </div>
                
                <div class="ingredient-row">
                    <div class="form-group">
                        <label for="quantity">Quantity</label>
                        <input type="number" id="quantity" class="form-control" step="0.01" min="0" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="unit">Unit</label>
                        <select id="unit" class="form-control" required>
                            <option value="">Select Unit</option>
                            <option value="g">grams (g)</option>
                            <option value="kg">kilograms (kg)</option>
                            <option value="ml">milliliters (ml)</option>
                            <option value="l">liters (l)</option>
                            <option value="tsp">teaspoon (tsp)</option>
                            <option value="tbsp">tablespoon (tbsp)</option>
                            <option value="cup">cup</option>
                            <option value="pcs">pieces (pcs)</option>
                        </select>
                    </div>
                </div>
                
              
                
                <div class="form-group">
                    <button type="submit" id="saveBtn" class="btn btn-primary">Add Ingredient</button>
                    <button type="button" id="cancelBtn" class="btn btn-secondary" style="display: none;">Cancel</button>
                </div>
            </form>
        </div>
        
        <div class="ingredients-list">
            <h2>Ingredients List</h2>
            <div id="loader" class="loader"></div>
            <table class="ingredients-table">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Quantity</th>
                        <th>Unit</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody id="ingredientsTableBody">
                    <!-- Ingredients will be dynamically added here -->
                </tbody>
            </table>
        </div>
    </main>

</body>
</html>