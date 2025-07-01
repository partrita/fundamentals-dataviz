# 선 그리기를 피하십시오 {#avoid-line-drawings}

가능하면 데이터를 모양을 윤곽선으로 그리는 선 대신 단색의 채워진 모양으로 시각화하십시오. 단색 모양은 일관된 개체로 더 쉽게 인식되고 시각적 인공물이나 착시를 일으킬 가능성이 적으며 윤곽선보다 양을 더 즉각적으로 전달합니다. 제 경험상 단색 모양을 사용한 시각화는 선 그리기를 사용한 동등한 버전보다 더 명확하고 보기에도 좋습니다. 따라서 저는 가능한 한 선 그리기를 피합니다. 그러나 이 권장 사항이 비례 잉크 원칙(챕터 \@ref(proportional-ink))을 대체하지 않는다는 점을 강조하고 싶습니다.

선 그리기는 20세기 대부분 동안 과학적 시각화가 손으로 그려졌고 흑백으로 재현 가능해야 했기 때문에 데이터 시각화 분야에서 오랜 역사를 가지고 있습니다. 이로 인해 단색 회색조 채우기를 포함한 단색으로 채워진 영역을 사용할 수 없었습니다. 대신 채워진 영역은 때때로 해치, 교차 해치 또는 점각 패턴을 적용하여 시뮬레이션되었습니다. 초기 플로팅 소프트웨어는 손으로 그린 시뮬레이션을 모방했으며 마찬가지로 선 그리기, 파선 또는 점선 패턴, 해칭을 광범위하게 사용했습니다. 현대 시각화 도구와 현대 복제 및 출판 플랫폼에는 이전의 제한 사항이 없지만 많은 플로팅 응용 프로그램은 여전히 채워진 영역 대신 윤곽선과 빈 모양을 기본값으로 사용합니다. 이 문제에 대한 인식을 높이기 위해 여기서는 선과 채워진 모양으로 그린 동일한 그림의 여러 예를 보여 드리겠습니다.

선 그리기의 가장 일반적이고 동시에 가장 부적절한 사용은 히스토그램과 막대 그래프에서 볼 수 있습니다. 윤곽선으로 그려진 막대의 문제점은 주어진 선의 어느 쪽이 막대 안쪽이고 어느 쪽이 바깥쪽인지 즉시 명확하지 않다는 것입니다. 결과적으로 특히 막대 사이에 간격이 있는 경우 그림의 주요 메시지를 손상시키는 혼란스러운 시각적 패턴이 발생합니다(그림 \@ref(fig:titanic-ages-lines)). 막대를 밝은 색으로 채우거나 색상 재현이 불가능한 경우 회색으로 채우면 이 문제를 피할 수 있습니다(그림 \@ref(fig:titanic-ages-filled)).

(ref:titanic-ages-lines) 빈 막대로 그린 타이타닉 승객 연령 히스토그램. 빈 막대는 혼란스러운 시각적 패턴을 만듭니다. 히스토그램 중앙에서는 어느 부분이 막대 안쪽이고 어느 부분이 바깥쪽인지 구분하기 어렵습니다.

<div class="figure" style="text-align: center">
<img src="avoid_line_drawings_files/figure-html/titanic-ages-lines-1.png" alt="(ref:titanic-ages-lines)" width="576" />
<p class="caption">(\#fig:titanic-ages-lines)(ref:titanic-ages-lines)</p>
</div>

(ref:titanic-ages-filled) 그림 \@ref(fig:titanic-ages-lines)의 동일한 히스토그램을 이제 채워진 막대로 그렸습니다. 이 그림 변형에서는 연령 분포의 모양을 훨씬 쉽게 식별할 수 있습니다.

<div class="figure" style="text-align: center">
<img src="avoid_line_drawings_files/figure-html/titanic-ages-filled-1.png" alt="(ref:titanic-ages-filled)" width="576" />
<p class="caption">(\#fig:titanic-ages-filled)(ref:titanic-ages-filled)</p>
</div>

다음으로 구식 밀도 그림을 살펴보겠습니다. 세 가지 붓꽃 종의 꽃받침 길이 분포에 대한 밀도 추정치를 흑백 선 그림으로 완전히 그려서 보여줍니다(그림 \@ref(fig:iris-densities-lines)). 분포는 윤곽선으로만 표시되며 그림이 흑백이기 때문에 이를 구분하기 위해 다른 선 스타일을 사용합니다. 이 그림에는 두 가지 주요 문제가 있습니다. 첫째, 파선 스타일은 곡선 아래 영역과 그 위 영역을 명확하게 구분하지 못합니다. 우리의 시각 시스템은 개별 선 요소를 연속선으로 연결하는 데 매우 능숙하지만 파선은 그럼에도 불구하고 다공성으로 보이며 둘러싸인 영역의 강력한 경계 역할을 하지 못합니다. 둘째, 선이 교차하고 선이 둘러싸는 영역이 음영 처리되지 않았기 때문에 6개의 서로 다른 모양 윤곽선에서 서로 다른 밀도를 분할하기 어렵습니다. 세 분포 모두에 파선 대신 실선을 사용했다면 이 효과는 더욱 강력했을 것입니다.

(ref:iris-densities-lines) 세 가지 다른 붓꽃 종의 꽃받침 길이 밀도 추정치. 버시컬러와 버지니카에 사용된 끊어진 선 스타일은 곡선 아래 영역이 그 위 영역과 구별된다는 인식을 손상시킵니다.

<div class="figure" style="text-align: center">
<img src="avoid_line_drawings_files/figure-html/iris-densities-lines-1.png" alt="(ref:iris-densities-lines)" width="576" />
<p class="caption">(\#fig:iris-densities-lines)(ref:iris-densities-lines)</p>
</div>

파선 대신 색선(그림 \@ref(fig:iris-densities-colored-lines))을 사용하여 다공성 경계 문제를 해결하려고 시도할 수 있습니다. 그러나 결과 그림의 밀도 영역은 여전히 시각적 존재감이 거의 없습니다. 전반적으로 채워진 영역이 있는 버전(그림 \@ref(fig:iris-densities-filled))이 가장 명확하고 직관적이라고 생각합니다. 그러나 각 종의 전체 분포가 보이도록 채워진 영역을 부분적으로 투명하게 만드는 것이 중요합니다.

(ref:iris-densities-colored-lines) 세 가지 다른 붓꽃 종의 꽃받침 길이 밀도 추정치. 단색의 색선을 사용하여 그림 \@ref(fig:iris-densities-lines)의 문제, 즉 선 아래 영역과 위 영역이 연결된 것처럼 보이는 문제를 해결했습니다. 그러나 각 곡선 아래 영역의 크기에 대한 강한 느낌은 여전히 없습니다.

<div class="figure" style="text-align: center">
<img src="avoid_line_drawings_files/figure-html/iris-densities-colored-lines-1.png" alt="(ref:iris-densities-colored-lines)" width="576" />
<p class="caption">(\#fig:iris-densities-colored-lines)(ref:iris-densities-colored-lines)</p>
</div>


(ref:iris-densities-filled) 세 가지 다른 붓꽃 종의 꽃받침 길이 밀도 추정치를 부분적으로 투명한 음영 영역으로 표시합니다.

<div class="figure" style="text-align: center">
<img src="avoid_line_drawings_files/figure-html/iris-densities-filled-1.png" alt="(ref:iris-densities-filled)" width="576" />
<p class="caption">(\#fig:iris-densities-filled)(ref:iris-densities-filled)</p>
</div>

선 그리기는 산점도 맥락에서도 나타나는데, 이때 다른 점 유형은 열린 원, 삼각형, 십자 등으로 그려집니다. 예를 들어 그림 \@ref(fig:mpg-linespoints)를 생각해 보십시오. 그림에는 시각적 노이즈가 많고 다른 점 유형이 서로 강력하게 분리되지 않습니다. 동일한 그림을 단색으로 채워진 모양으로 그리면 이 문제가 해결됩니다(그림 \@ref(fig:mpg-filledpoints)).

(ref:mpg-linespoints) 전륜 구동(FWD), 후륜 구동(RWD), 4륜 구동(4WD) 자동차의 도시 연비 대 엔진 배기량. 모두 흑백 선으로 그려진 기호인 다른 점 스타일은 상당한 시각적 노이즈를 생성하고 그림을 읽기 어렵게 만듭니다.

<div class="figure" style="text-align: center">
<img src="avoid_line_drawings_files/figure-html/mpg-linespoints-1.png" alt="(ref:mpg-linespoints)" width="528" />
<p class="caption">(\#fig:mpg-linespoints)(ref:mpg-linespoints)</p>
</div>


(ref:mpg-filledpoints) 도시 연비 대 엔진 배기량. 여러 구동 방식 변형에 대해 여러 색상과 여러 단색 모양을 모두 사용하여 이 그림은 필요한 경우 회색조로 재현 가능하게 유지하면서 구동 방식 변형을 명확하게 구분합니다.

<div class="figure" style="text-align: center">
<img src="avoid_line_drawings_files/figure-html/mpg-filledpoints-1.png" alt="(ref:mpg-filledpoints)" width="528" />
<p class="caption">(\#fig:mpg-filledpoints)(ref:mpg-filledpoints)</p>
</div>

저는 열린 점보다 단색 점을 훨씬 선호하는데, 단색 점이 시각적으로 훨씬 더 두드러지기 때문입니다. 열린 점을 선호하는 주장은 때때로 듣게 되는데, 각 점의 가운데에 있는 빈 영역을 통해 아래에 있을 수 있는 다른 점을 볼 수 있으므로 중복 표시에 도움이 된다는 것입니다. 제 생각에는 중복 표시된 점을 볼 수 있다는 이점은 일반적으로 열린 기호의 추가적인 시각적 노이즈로 인한 손실을 능가하지 못합니다. 중복 표시를 처리하는 다른 방법이 있으며, 몇 가지 제안은 챕터 \@ref(overlapping-points)를 참조하십시오.

마지막으로 상자 그림을 살펴보겠습니다. 상자 그림은 그림 \@ref(fig:lincoln-weather-box-empty)에서와 같이 일반적으로 빈 상자로 그려집니다. 저는 그림 \@ref(fig:lincoln-weather-box-filled)에서와 같이 상자에 밝은 음영을 선호합니다. 음영은 상자를 그림 배경과 더 명확하게 구분하며, 그림 \@ref(fig:lincoln-weather-box-empty)와 \@ref(fig:lincoln-weather-box-filled)의 경우처럼 많은 상자 그림을 바로 옆에 표시할 때 특히 도움이 됩니다. 그림 \@ref(fig:lincoln-weather-box-empty)에서는 많은 수의 상자와 선이 그림 \@ref(fig:titanic-ages-lines)에서 보았듯이 상자 바깥쪽의 배경 영역이 실제로는 다른 모양의 안쪽에 있는 것처럼 보이는 착각을 다시 일으킬 수 있습니다. 이 문제는 그림 \@ref(fig:lincoln-weather-box-filled)에서 해결됩니다. 상자 안쪽에 음영을 주는 것이 데이터의 가운데 50%에 너무 많은 가중치를 준다는 비판을 때때로 들었지만 저는 그 주장에 동의하지 않습니다. 음영 처리된 상자이든 아니든 상자 그림은 데이터의 나머지 부분보다 데이터의 가운데 50%에 더 많은 가중치를 주는 것이 본질적입니다. 이러한 강조를 원하지 않는다면 상자 그림을 사용하지 마십시오. 대신 바이올린 그림, 지터 처리된 점 또는 시나 그림(챕터 \@ref(boxplots-violins))을 사용하십시오.

(ref:lincoln-weather-box-empty) 2016년 네브래스카 주 링컨의 일일 평균 기온 분포. 상자는 음영 없이 전통적인 방식으로 그려집니다.

<div class="figure" style="text-align: center">
<img src="avoid_line_drawings_files/figure-html/lincoln-weather-box-empty-1.png" alt="(ref:lincoln-weather-box-empty)" width="576" />
<p class="caption">(\#fig:lincoln-weather-box-empty)(ref:lincoln-weather-box-empty)</p>
</div>


(ref:lincoln-weather-box-filled) 2016년 네브래스카 주 링컨의 일일 평균 기온 분포. 상자에 밝은 회색 음영을 주어 배경에 대해 더 잘 보이도록 할 수 있습니다.

<div class="figure" style="text-align: center">
<img src="avoid_line_drawings_files/figure-html/lincoln-weather-box-filled-1.png" alt="(ref:lincoln-weather-box-filled)" width="576" />
<p class="caption">(\#fig:lincoln-weather-box-filled)(ref:lincoln-weather-box-filled)</p>
</div>
