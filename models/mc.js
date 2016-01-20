"use strict";

module.exports = function (sequelize, DataTypes) {
    var MC = sequelize.define("MC", {
        questionText: { type: DataTypes.STRING(1000), allowNull: false },
        topic: { type: DataTypes.STRING, allowNull: false },
        choiceA: { type: DataTypes.STRING, allowNull: false },
        choiceB: { type: DataTypes.STRING, allowNull: false },
        choiceC: { type: DataTypes.STRING, allowNull: false },
        choiceD: { type: DataTypes.STRING, allowNull: false },
        correctAns: { type: DataTypes.ENUM, values: ['A', 'B', 'C', 'D'], allowNull: false },
        responseA: { type: DataTypes.STRING(1000), allowNull: false },
        responseB: { type: DataTypes.STRING(1000), allowNull: false },
        responseC: { type: DataTypes.STRING(1000), allowNull: false },
        responseD: { type: DataTypes.STRING(1000), allowNull: false }
    }, {
        timestamps: false,
        getterMethods: {
            getAns: function () {
                return this.getDataValue('correctAns');
            },
            getChoices: function () {
                choiceArray = [];
                choiceArray.push(this.choiceA);
                choiceArray.push(this.choiceB);
                choiceArray.push(this.choiceC);
                choiceArray.push(this.choiceD);
                return choiceArray;
            }
        },
        classMethods: {
            
        },
        instanceMethods: {

        }
    });

    return MC;
};