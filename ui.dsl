// Navigation Elements
Navbar { position: top, style: [default, custom], items: [Home, About, Contact], logo: "logo.png" }
Sidebar { position: left, style: [dark, light], items: [Dashboard, Profile, Settings] }
Breadcrumb { items: [Home, Dashboard, Settings], separator: ">" }
Pagination { currentPage: 1, totalPages: 5, style: [dots, arrows] }
Tabs { items: [Tab1, Tab2, Tab3], activeTab: Tab1 }
Drawer { position: right, style: [slide-in, overlay], content: "Drawer Content Here" }
Dropdown { buttonText: "Select Option", options: [Option1, Option2, Option3], style: [basic, custom] }
Stepper { steps: [Step 1, Step 2, Step 3], currentStep: Step 1, orientation: horizontal }

// Input Elements
TextInput { placeholder: "Enter text", value: "default value", style: [outline, filled] }
Textarea { placeholder: "Write your message", rows: 4, cols: 50 }
SelectDropdown { placeholder: "Choose an option", options: [Option1, Option2, Option3] }
RadioButtons { name: "gender", options: [Male, Female, Other], selected: Male }
Checkboxes { name: "subscribe", label: "Subscribe to newsletter", checked: true }
ToggleSwitch { label: "Enable notifications", state: on }
FileUpload { accept: "image/*", buttonText: "Upload File" }
Slider { min: 0, max: 100, value: 50, step: 1 }
DateTimePicker { type: date, format: "DD/MM/YYYY" }
NumberInput { min: 0, max: 100, value: 10 }
SearchBox { placeholder: "Search here", value: "" }
Combobox { placeholder: "Search for a country", options: [USA, Canada, UK] }

// Button Elements
PrimaryButton { text: "Submit", action: submitForm(), style: [default, custom] }
SecondaryButton { text: "Cancel", action: cancelAction() }
IconButton { icon: "search", action: searchFunction() }
FAB { icon: "add", action: openForm(), position: bottom-right }
GroupedButtons { buttons: [Button1, Button2, Button3], orientation: horizontal }
ToggleButton { text: "Enable/Disable", state: on }

// Data Display Elements
Card { title: "Card Title", content: "Card Content", image: "card-image.jpg", footer: "Footer Content" }
Table { headers: [Name, Age, Address], rows: [["John Doe", 30, "1234 Elm St"], ["Jane Smith", 25, "5678 Oak St"]] }
List { type: [ordered, unordered], items: [Item1, Item2, Item3] }
Accordion { title: "Panel Title", content: "Accordion content here", state: closed }
Tooltip { text: "This is a tooltip", target: "button" }
Toast { message: "Success! Action completed.", duration: 5s, type: success }
Alert { message: "Warning: Check your input", type: warning }
Modal { title: "Confirm Action", content: "Are you sure you want to proceed?", buttons: [Confirm, Cancel] }

// Form Elements
FormGroup { label: "Full Name", input: TextInput }
ValidationMessage { field: "email", message: "Please enter a valid email address" }

// Layout Elements
Grid { columns: 12, rows: 1, gap: 10px }
Flexbox { direction: row, wrap: wrap, justify: center, align: start }
CardLayout { columns: 3, gap: 15px, items: [Card1, Card2, Card3] }

// Feedback Elements
Feedback { type: success, message: "Action completed successfully" }
ConfirmationDialog { title: "Are you sure?", message: "This action cannot be undone", buttons: [Yes, No] }

// Mobile-Specific Elements
BottomNavigation { items: [Home, Search, Profile], activeItem: Home }
SwipeGesture { direction: left, action: navigateToNext() }
PullToRefresh { action: refreshContent() }
InfiniteScroll { trigger: "Load more", action: loadMoreItems() }
