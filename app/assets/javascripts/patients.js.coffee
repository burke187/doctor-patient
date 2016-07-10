app = angular.module("doctor-patient", ["ngResource"])

@PatientCtrl = ($scope, $Resource) ->
  Patient = $resource("/patients/:id", {id: "@id"}, {update: {method: "PUT"}})
