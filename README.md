# Project Yellow House
A pilot/poc project for Strawberry Caramel House IoT

## TODO's
- **Home Assistance**: Set this up
  - **On Docker**
  - **On RaspberryPi**
- **Initialize Frontend**: What should we use?
  - **React Native**
  - **Flutter**
- **Initialize Backend**: Technology Stack (Minerva model)
  - **Java Spring Boot** Reactive RESTFul (both in-house and BFF)
- **Initialize Container**: Determine which Container service to use
  - **Docker** or **Docker Compose**
  - **k8/Minikube** is a great tool
- **Initialize CI**: What should we use?
  - **GitHub Actions** is a powerful tool for CI
  - **Jenkins** with a physical CI server
- **Choose a Cloud Service**: Decide whether to use Could or perhaps the same laptop as the CI
  - **AWS** is an option. Need to get that certificate first
  - **Google Cloud** is an option. Need to get that certificate first

---

## Features
Let's see what we're gonna do. It's the app for the whole property's system.

### Universal
The global/common features that the whole lot requires
- **Time**
- **Schedule**
  - **Users**
  - **Systems**
- **Profile**
  - **Household**
  - **Guests**
- **Contacts**

### Smart Home / IoT
This lot needs to first setup the IoT capabilities. Google is a good option
