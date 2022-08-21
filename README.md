# README

Primero, debe traerse el repositorio al git local para poder iniciar el programa utilizando el comando "rails s".

Una vez iniciada la aplicación con "rails s", llevará inmediatamente a la página principal donde se hace display del index con 15 propiedades por página.

Las páginas son traídas de la API de EasyBroker, endpoint properties. 

Se cuenta con botones de navegación de página.

En cada card de propiedad individual existe un link que lleva a la página en que se renderea el detalle de la propiedad, así como un formulario para crear nuevos leads que se conecta con la API de EasyBroker, en el endpoint de create_contact.



Questions for inspiration:

1. What was the hardest thing you had to solve while building the website?

The hardest obstacle I had building the website was figuring out how to make the contact form work. I had never created an interactive form with rails that had the purpose of connecting to an external API and pass the input values as the request body. Had to do a lot of investigation and tries to finally figure out the correct way to pass the values through params to make the form functional.

Besides that, I had a hard time with a minor error that did not let me display my CSS styles on the application. I had initially created an initialize method in the property controller where I made the request to get the 15 properties to be displayed on the index page. This avoided my CSS styles to be actually applied. The solution was bringing the get request to the index method on the controller, rather than leaving it in the initializer. 

2. Are there any areas of your code that you think isn't that "clean"?

I believe the CSS file is not as clean as I would have liked.  The reason is because I left styles for the last since, as mentioned above, my application was not applying them at all at the beginning. Thus, I believe that section of the code could have been cleaner in the end. Other than that, I think methods are readable, understandable and formatted in a legible way.

3. If you weren't able to finish: what were you able to complete and were you happy with your progress given the time constraints?

I was able to complete the rendering of the index and show page, although with basic html and css structure. I am happy that I managed to sucessfully conect my requests to the external EasyBroker API.

I reckon I did not include any tests for this submission. That was the main part that I was not able to finish. I honestly had to make a lot of investigation and read a lot of documentation about rails, since I had not created rails apps in a while. I learned to develop with rails during the time I was at Codeable bootcamp, and though i loved Ruby, Rails was kind of hard to learn for me because we had to do it extremely fast. I'm currently practicing the creation of APIs with rails to later be interacted with react-built fron-end websites. However, I now identified lots of rooms for improvement in the whole rails apps creation. 

I thank EasyBroker for the challenge. I would have opted to do it all with JavaScript/React code, but the precision you guys made to consume the API from the back-end turned out to be a hard test personally. I look forward to this opportunities because they can help me identify what I need to practice on, so you guys have my sincere greetings for that. Apollogies for not including tests in the end. 

Thanks for the challenge. I will keep practicing.
