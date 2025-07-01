---
title: "데이터 시각화의 기본"
author: "클라우스 O. 윌크"
description: "데이터를 정확하게 반영하고, 스토리를 전달하며, 전문적으로 보이는 시각화를 만들기 위한 안내서입니다."
github-repo: clauswilke/dataviz
site: bookdown::bookdown_site
output:
  bookdown::gitbook:
    includes:
      in_header: html_includes/google_analytics.html
bibliography: "bibliography.bib"
biblio-style: "apalike"
link-citations: true
cover-image: cover.png
---

# 환영합니다 {-}

<a href="https://www.amazon.com/gp/product/1492031089"><img src="cover.png" width="304" height="398" alt="표지 이미지" align="right" style="margin: 0 0 1em 1em; border-width: 1px; border-style: solid; border-color: black;" /></a> 이것은 오라일리 미디어(O'Reilly Media, Inc.)에서 출판한 "데이터 시각화의 기본"이라는 책의 웹사이트입니다. 이 웹사이트에는 최종 교정 및 기타 품질 관리 전의 전체 저자 원고가 포함되어 있습니다. 공식 하드카피나 전자책을 주문하고 싶다면 [아마존,](https://www.amazon.com/gp/product/1492031089) [반스앤노블,](https://www.barnesandnoble.com/w/fundamentals-of-data-visualization-claus-o-wilke/1128580869) [구글 플레이,](https://play.google.com/store/books/details/Claus_O_Wilke_Fundamentals_of_Data_Visualization?id=WmmNDwAAQBAJ) 또는 [파월스](https://www.powells.com/book/-9781492031086)를 포함한 다양한 리셀러에서 주문할 수 있습니다.

이 책은 데이터를 정확하게 반영하고, 스토리를 전달하며, 전문적으로 보이는 시각화를 만들기 위한 안내서입니다. 이 책은 제 실험실에서 학생 및 박사후 연구원들과 수천 개의 데이터 시각화 작업을 하면서 얻은 경험을 바탕으로 작성되었습니다. 수년에 걸쳐 동일한 문제가 반복해서 발생하는 것을 알게 되었습니다. 저는 이러한 상호 작용을 통해 축적된 지식을 이 책의 형태로 수집하려고 노력했습니다.

이 책 전체는 RStudio를 텍스트 편집기로 사용하고 **bookdown** 패키지를 사용하여 마크다운 문서 모음을 일관된 전체로 변환하는 R 마크다운으로 작성되었습니다. 이 책의 소스 코드는 GitHub(https://github.com/clauswilke/dataviz)에 호스팅되어 있습니다. 오타나 기타 문제를 발견하면 언제든지 GitHub에서 문제를 제기하거나 풀 리퀘스트를 제출해 주십시오. 후자의 경우 커밋 메시지에 "이 기여의 저작권을 클라우스 O. 윌크에게 양도합니다."라는 문장을 추가하여 이 책을 다른 형태로 출판할 수 있는 옵션을 유지할 수 있도록 해주십시오.

이 저작물은 [저작자 표시-비영리-변경 금지 4.0 국제](https://creativecommons.org/licenses/by-nc-nd/4.0/legalcode) 라이선스에 따라 사용이 허가되었습니다.
