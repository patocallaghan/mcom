class Minicom {
  messengerApi = "http://localhost:3000/customer_api/ping";
  constructor() {
    $(document).ready(() => {
      this.logIn();

      document.getElementById("sign-in").onclick = event => {
        event.preventDefault();
        this.register();
      };
    });
  }

  register() {
    let email = document.getElementById("user-email").value;
    document.cookie = `user=${email}`;
    this.logIn();
  }

  async logIn() {
    let email = Cookies.get("user");
    if (!email) return;

    this.addNameToDom(email);
    this.updateSignInForm();

    let unreadMessages = await $.post(this.messengerApi, { email }).then();

    unreadMessages.forEach(message => {
      alert(message.content);
      this.markRead(email, message.id);
    });
  }

  updateSignInForm() {
    document.getElementById("sign-in").innerText = "Switch User";
  }

  markRead(email, message_id) {
    $.post("http://localhost:3000/customer_api/read", {
      email,
      message_id
    });
  }

  addNameToDom(email) {
    let name = email.split("@")[0];
    document.getElementById("welcome").innerText = `Welcome, ${name}!`;
  }
}
