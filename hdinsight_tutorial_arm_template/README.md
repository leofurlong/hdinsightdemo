# Create HDInsight Tutorial Linux Cluster and load tutorial data with Script Action

Create HDInsight Tutorial Linux cluster and load tutorial data with Script Action -<br>
<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fjoshuafennessy%2fhdinsightdemo%2Fmaster%2Fhdinsight_tutorial_arm_template%2Fhdinsight_tutorial_with_data.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fjoshuafennessy%2fhdinsightdemo%2Fmaster%2Fhdinsight_tutorial_arm_template%2Fhdinsight_tutorial_with_data.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>

Template creates an HDInsight Linux cluster and associated storage account.<br />
Then custom script action to load data is only ran on the first headnode in the cluster.<br />
