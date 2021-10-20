const endPoint = 6;
const select = [0, 0, 0, 0, 0, 0];

window.onload = function() {

	function calResult() {
		var result = select.indexOf(Math.max(...select));
		console.log(result);
		return result;
	}

	//결과페이지 띄우는 함수
	function setResult() {
		let point = calResult();
		const resultName = document.querySelector(".resultname");
		resultName.innerHTML = resultList[point].name;

		const resultDesc = document.querySelector(".resultDesc");
		resultDesc.innerHTML = resultList[point].desc;

	}
	
	//결과페이지 가는 함수
	function goResult() {
		$("#test").hide();
		$("#result").show();
		setResult();
	}

	//답변란 함수
	function aList(ansT, count, idx) {
		var a = document.querySelector(".aBox");
		var answer = document.createElement("button");
		answer.classList.add("answerList");
		a.appendChild(answer);
		answer.innerHTML = ansT;

		answer.addEventListener("click", function() {
			var list = document.querySelectorAll(".answerList")
			for (i = 0; i < list.length; i++) {
				list[i].disabled = true;
				list[i].style.display = "none";
			}
			var target = testList[count].a[idx].type;
			for (i = 0; i < target.length; i++) {
				select[target[i]] += 1;
			}

			qList(++count);
		}, false);
	}

	//질문란 함수
	function qList(count) {
		if (count === endPoint) {
			goResult();
			return;
		}

		var q = document.querySelector(".qBox");
		q.innerHTML = testList[count].q;
		for (let i in testList[count].a) {
			aList(testList[count].a[i].answer, count, i);
		}

		var status = document.querySelector(".statusBar");
		status.style.width = (100 / endPoint) * (count + 1) + "%";
	}
	let count = 0;
	qList(count);

}