# AI Dev Container - Developer Sandbox Repository
[ChatGPT as AI Agent Compass](https://chatgpt.com/share/6822522d-da44-8000-bc2d-09f1717c7b82)
[ChatGPT Cloud Run Configuration](https://chatgpt.com/share/682108ef-6e5c-8000-9fd1-f055247cc28c)

```mermaid
ai-dev-sandbox/
│ ├── firebase-app                 # Firebase app (User-facing and Admin UI)
│ │ ├── package.json                # Node.js package configuration
│ │ ├── tsconfig.json               # TypeScript configuration
│ │ ├── .firebaserc                 # Firebase project configuration
│ │ ├── firebase.json               # Firebase hosting configuration
│ │ ├── .gitignore                  # Git ignore rules
│ │ ├── .env.example                # Environment variables template
│ │ ├── src/                        # Source code directory
│ │ │ ├── App.tsx                   # Main React application component
│ │ │ └── index.tsx                 # Application entry point
│ │ ├── /components                 # React components directory
│ │ │ ├── VendingMachine.tsx        # Vending machine interface component
│ │ │ ├── WorkflowOrchestrator.tsx  # Workflow Orchestrator interface component
│ │ │ └── PasswordlessAuth.tsx      # Authentication component
│ │ ├── /public                     # Public assets directory
│ │ │ └── index.html                # HTML entry point
│ │ ├── /functions                  # Firebase Cloud Functions directory
│ │ │ └── package.json              # Cloud Functions dependencies
├── /n8n-workflows                  # n8n automation directory
│ ├── /workflows                    # n8n workflow definitions
│ └── /n8n-config                   # n8n environment configuration
├── /thn-n8n-container              # Custom n8n container directory
│ ├── Dockerfile                    # Container build configuration
│ ├── .dockerignore                 # Docker ignore rules
│ └── /entrypoint                   # Container startup scripts
├── /shared-workspace              # AI Developer Sandbox
├── /code-server                    # Browser-based IDE directory (not implemented)
├── /dockerfile                     # IDE container configuration (not implemented)
├── /config                         # IDE settings and integrations (not implemented)
└── README.md                       # Project documentation
```

This project sets up The Handsomest Nerd, Inc.'s custom n8n environment with integrated Qdrant support, deployed via
GitHub Actions to Google Cloud Run.

## Features

- Custom Docker image with `curl`, `bash`, `nodejs`, and `firebase` installed.
- Environment variables for GitHub and CodeSandbox tokens.
- Automated deployment using GitHub Actions.
- Qdrant integration for vector search capabilities.

## Setup

1. Clone the repository.
2. Create a `.env` file with the necessary environment variables.
3. Add required secrets to your GitHub repository.
4. Push changes to the `main` branch to trigger deployment.

## Access

Once deployed, access your n8n instance via the URL provided by Google Cloud Run.

# The Handsomest Nerd, Inc. AI Checklist

1. Finalize Vending Machine UI
   Description: Ensure that the React-based vending machine interface is fully functioning and can accept user inputs
   for the prompt and payment.

   Checklist:

   - [ ] Ensure React components for user input and display are correctly structured.

   - [ ] Integrate payment processing (Firebase or other solution).

   - [ ] Validate that the workflow is triggered upon payment.

2. Implement Passwordless Login System
   Description: Complete the passwordless authentication flow using Firebase. The system should only allow certain email
   addresses for added security.

   Checklist:

   - [ ] Set up Firebase Authentication for passwordless login (email link).

   - [ ] Implement email whitelisting to restrict access.

   - [ ] Test the login flow and ensure it links correctly to user sessions.

3. Connect Vending Machine UI to Firebase Backend
   Description: Ensure the Vending Machine UI sends data to Firebase, triggering the correct workflows once the user
   submits the prompt and payment.

   Checklist:

   - [ ] Set up Firebase Functions to handle prompt and payment data.

   - [ ] Ensure the workflow orchestrator in Firebase is triggered by this data.

4. Develop Workflow Orchestrator (n8n)
   Description: The n8n workflow orchestrator should be able to handle incoming prompts from the vending machine and
   trigger the generation of the React app.

   Checklist:

   - [ ] Ensure n8n is properly connected to Firebase to receive data.

   - [ ] Develop workflows to handle different aspects of the project: generating prompts, creating a scaffolded React app, and
routing to deployment options.

   - [ ] Test workflows with sample inputs.

5. Create React App Scaffold from Workflow
   Description: Upon receiving the prompt, the workflow orchestrator (n8n) should generate a React app scaffold based on
   the user's specifications.

   Checklist:

   - [ ] Set up the scaffold template that n8n will use to create the React app.

   - [ ] Integrate GPT (or another AI model) to dynamically generate React code based on the input prompt.

   - [ ] Test React app generation with different inputs.

6. Integrate Deployment Options (CodeSandbox & GitHub)
   Description: Ensure that the generated React app can be deployed either to CodeSandbox for preview or GitHub for full
   access.

   Checklist:

   - [ ] Set up automated deployment to CodeSandbox from n8n.

   - [ ] Integrate a GitHub push from n8n to store the final code in a user’s repository.

   - [ ] Ensure CodeSandbox provides an editable preview while GitHub provides full access.

7. Set Up In-Browser VS Code for App Customization
   Description: Provide users the option to edit their generated app directly in their browser via VS Code integration.

   Checklist:

   - [ ] Configure a code-server or similar service in a container to allow for VS Code access directly in the browser.

   - [ ] Integrate the VS Code environment into the vending machine UI.

   - [ ] Ensure that users can edit and save changes to their React app in the VS Code instance.

8. Integrate Payment Gateway for Workflow Access
   Description: Ensure that the GitHub access button is behind a paywall, while CodeSandbox access remains free.

Checklist:

   - [ ] Integrate a payment gateway (Stripe, PayPal, etc.) for the GitHub deployment option.

   - [ ] Ensure payments are processed before users can access GitHub deployment.

   - [ ] Test the payment flow and button visibility based on user payment status.

9. Final Testing & Validation
   Description: Test all components together to ensure smooth operation of the vending machine, authentication, workflow
   orchestration, code generation, and deployment.

Checklist:

   - [ ] Test the entire process from prompt submission to React app deployment.

   - [ ] Test edge cases (invalid input, no payment, etc.).

   - [ ] Validate payment flow, login flow, and deployment options.

10. Document the Process for Future Reference
    Description: Write documentation for the entire system, including setup instructions, API endpoints, and workflow
    steps.

Checklist:

   - [ ] Write README for the repo that explains the overall architecture.

   - [ ] Document Firebase Function setup, workflow creation in n8n, and React app generation.

   - [ ] Provide API reference for communication between the vending machine UI, Firebase, and n8n.

11. Deploy to Production Environment
    Description: Once everything is tested and validated, deploy the system to a production environment.

Checklist:

   - [ ] Set up cloud hosting (Firebase, AWS, etc.) for production deployment.

   - [ ] Set up production environment variables (API keys, tokens, etc.).

   - [ ] Deploy the complete application, ensuring scalability and reliability.

🌟 Future Add-ons & Enhancements
AI Integration: Implement more advanced AI for personalized code generation, feedback, and app improvements.

User Accounts: Allow users to save their generated apps, track their usage, and have access to their code across
sessions.

Collaboration Features: Allow users to collaborate on app development directly within the VS Code environment or in the
app.