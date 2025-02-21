---
layout: doc
outline: deep
---

# Stop Category

The safety function allows the robot to initiate three types of stop categories defined by IEC 60204-1.

<table>
  <tr>
    <th>Stop<br>Category</th>
    <td>Description</td>
  </tr>
  <tr>
    <th>0<br>[STO]</th>
    <td>Immediately, the robot is turned off and stopped. <br>
    * Joint brake wear & tear may occur, which may shorten the lifespan of the robot. Do not use it unless it is unavoidable. <br>
    **Because the power of the robot is shut off, it is necessary to restart it when using it again after removing the danger.</td>
  </tr>
  <tr>
    <th>1<br>[SS1]</th>
    <td>All joints of the robot are decelerated to the maximum and stopped, and then the power is shut off to stop. <br>
    * Since the power of the robot is shut off, it is necessary to restart it when using it again after removing the danger.</td>
  </tr>
  <tr>
    <th>2<br>[SS2]</th>
    <td>All the joints of the robot are decelerated to the maximum, stop, and then enter the SOS state. <br>
    * SOS: Maintains the current position while the robot is powered on and activated, and starts Stop Category 0 when a position change is detected. <br>
    ** Since the power is not shut off, it can be used immediately after removing the danger.</td>
  </tr>
</table>

<div class="warning custom-block">
<p class="custom-block-title">CAUTION</p>
<ol>
<li>
According to ISO10218-1 5.5.2 and 5.5.3, a suitable stop category for emergency stop and protective stop should be selected.
</li>
<li>
For an emergency stop, you must select from stop category 0 or 1.
</li>
<li>
For an emergency stop, activation is required.
</li>
<li>
For a protection stop, at least one must be selected from stop categories 0 and 1.
</li>
<li>
For additional protection stops, stop category 2 can be used.
</li>
</ol>
</div>

<style scoped>
th {
  text-align: center;
}
</style>