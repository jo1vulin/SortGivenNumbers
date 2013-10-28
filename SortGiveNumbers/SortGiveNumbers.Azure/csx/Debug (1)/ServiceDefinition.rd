<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="SortGiveNumbers.Azure" generation="1" functional="0" release="0" Id="560e6b22-25ff-45b9-8d5a-44f057331579" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="SortGiveNumbers.AzureGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="SortGiveNumbers:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/SortGiveNumbers.Azure/SortGiveNumbers.AzureGroup/LB:SortGiveNumbers:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="SortGiveNumbers:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/SortGiveNumbers.Azure/SortGiveNumbers.AzureGroup/MapSortGiveNumbers:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="SortGiveNumbersInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/SortGiveNumbers.Azure/SortGiveNumbers.AzureGroup/MapSortGiveNumbersInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:SortGiveNumbers:Endpoint1">
          <toPorts>
            <inPortMoniker name="/SortGiveNumbers.Azure/SortGiveNumbers.AzureGroup/SortGiveNumbers/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapSortGiveNumbers:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/SortGiveNumbers.Azure/SortGiveNumbers.AzureGroup/SortGiveNumbers/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapSortGiveNumbersInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/SortGiveNumbers.Azure/SortGiveNumbers.AzureGroup/SortGiveNumbersInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="SortGiveNumbers" generation="1" functional="0" release="0" software="C:\Users\j.vulin\Google Drive\Programing\VS 2012 Projects\SortGiveNumbers\SortGiveNumbers.Azure\csx\Debug\roles\SortGiveNumbers" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;SortGiveNumbers&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;SortGiveNumbers&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/SortGiveNumbers.Azure/SortGiveNumbers.AzureGroup/SortGiveNumbersInstances" />
            <sCSPolicyUpdateDomainMoniker name="/SortGiveNumbers.Azure/SortGiveNumbers.AzureGroup/SortGiveNumbersUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/SortGiveNumbers.Azure/SortGiveNumbers.AzureGroup/SortGiveNumbersFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="SortGiveNumbersUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="SortGiveNumbersFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="SortGiveNumbersInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="5db1f674-68a4-463e-9ec6-b3ca2782d112" ref="Microsoft.RedDog.Contract\ServiceContract\SortGiveNumbers.AzureContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="6b770a50-8698-4c8e-a79c-e05ae9628f65" ref="Microsoft.RedDog.Contract\Interface\SortGiveNumbers:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/SortGiveNumbers.Azure/SortGiveNumbers.AzureGroup/SortGiveNumbers:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>