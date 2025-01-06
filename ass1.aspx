<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Questions List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 20px;
        }
        .question {
            margin-bottom: 20px;
        }
        .answer {
            margin-left: 20px;
            font-weight: bold;
        }
        .link {
            margin-left: 20px;
            color: blue;
            text-decoration: underline;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Question and Answer</h1>
        <asp:Repeater ID="QuestionRepeater" runat="server">
            <ItemTemplate>
                <div class="question">
                    <p><%# Eval("Question") %></p>
                    <p class="answer">
                        <%# Eval("Answer") %> 
                        <a class="link" href='<%# Eval("Link") %>' target="_blank">Answer</a>
                    </p>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </form>

    <script runat="server">
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var questionList = new List<dynamic>    
                {
                    new { Question = "1. Create ASP.NET page to accept a name from the user and display welcome message.\r\n", Answer = "Ans 1", Link = "ass1_que1.aspx" },
                    new { Question = "2. Create ASP.NET page to generate the Temperature Conversion. \r\n", Answer = "Ans 2", Link = "ass1_que2.aspx" },
                    new { Question = "3. Create a component that receives two numbers from the user through a Web Form, and based on the user’s selection it performs algebraic operations on the two numbers and returns the result to the Web Form. The result should be displayed in the Web Form. \r\n", Answer = "Ans 3", Link = "https://example.com/answer3" },
                    new { Question = "4. Create ASP.NET page to demonstrate “AutoPostBack” property for controls available.\r\n", Answer = "Ans 4", Link = "https://example.com/answer4" },
                  
                };

                QuestionRepeater.DataSource = questionList;
                QuestionRepeater.DataBind();
            }
        }
    </script>
</body>
</html>
