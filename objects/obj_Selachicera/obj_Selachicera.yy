{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_Selachicera",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":{"name":"obj_Wall","path":"objects/obj_Wall/obj_Wall.yy",},"eventNum":0,"eventType":4,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":{"name":"obj_Collision","path":"objects/obj_Collision/obj_Collision.yy",},"eventNum":0,"eventType":4,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":1,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_Brachyanser","path":"objects/obj_Brachyanser/obj_Brachyanser.yy",},"propertyId":{"name":"attack_range","path":"objects/obj_Brachyanser/obj_Brachyanser.yy",},"value":"350",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_Brachyanser","path":"objects/obj_Brachyanser/obj_Brachyanser.yy",},"propertyId":{"name":"homing_speed","path":"objects/obj_Brachyanser/obj_Brachyanser.yy",},"value":"3",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_Brachyanser","path":"objects/obj_Brachyanser/obj_Brachyanser.yy",},"propertyId":{"name":"patrol_speed","path":"objects/obj_Brachyanser/obj_Brachyanser.yy",},"value":"3",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_Brachyanser","path":"objects/obj_Brachyanser/obj_Brachyanser.yy",},"propertyId":{"name":"grabbable","path":"objects/obj_Brachyanser/obj_Brachyanser.yy",},"value":"False",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_EnemyBase","path":"objects/obj_EnemyBase/obj_EnemyBase.yy",},"propertyId":{"name":"enemy_damage","path":"objects/obj_EnemyBase/obj_EnemyBase.yy",},"value":"2",},
  ],
  "parent": {
    "name": "objs_Enemies",
    "path": "folders/Objects/objs_Enemies.yy",
  },
  "parentObjectId": {
    "name": "obj_Brachyanser",
    "path": "objects/obj_Brachyanser/obj_Brachyanser.yy",
  },
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"state","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"normal","varType":2,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_Selachicera",
    "path": "sprites/spr_Selachicera/spr_Selachicera.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}