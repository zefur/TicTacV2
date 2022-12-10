// import CableReady from "cable_ready";
// import consumer from "./consumer";
// document.addEventListener("turbolinks:load", () => {
//   const element = document.getElementById("room-id");
//   const room_id = element.getAttribute("data-gameroom-id");
//   console.log("hell");
//   console.log(room_id);
//   consumer.subscriptions.create(
//     { channel: "ChatChannel", id: room_id },
//     {
//       connected() {
//         // Called when the subscription is ready for use on the server
//         console.log("connected");
//       },

//       disconnected() {
//         // Called when the subscription has been terminated by the server
//       },

//       received(data) {
//         // Called when there's incoming data on the websocket for this channel
//         if (data.cableReady) CableReady.perform(data.operations);
//       },
//     }
//   );
// });
