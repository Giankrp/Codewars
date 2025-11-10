package main

import (
	"fmt"
	"sort"

	"strings"
)

func main() {
	//fmt.Println(CamelCase("hello case"))
	//contar()
	//Vaporcode("hola papas")
	// DecodeMorse(".... . -.--   .--- ..- -.. .")
	fmt.Println(SortNumbers([]int{2, 2, 0, 32, 423, 423, 432, 424, 324, 324, 25, 46, 567, 2, 35}))
}

func GetCount(str string) (count int) {
	// Enter solution here
	papas := strings.Split(str, "")
	con := 0

	for _, v := range papas {
		if letra := strings.ToLower(v); letra != "a" && letra != "e" && letra != "i" && letra != "o" && letra != "u" {
			continue
		}
		con++
	}
	return con
}
func SortNumbers(numbers []int) []int {
	if len(numbers) == 0 {
		return []int{}
	}

	sort.Slice(numbers, func(i, j int) bool {

		return numbers[i] < numbers[j]
	})

	return numbers
}
func Solution(str string) []string {
	melo := strings.Split(str, "")
	var melo2 []string
	for i := 0; i < len(melo); i += 2 {
		if i+1 < len(melo) {
			melo2 = append(melo2, melo[i]+melo[i+1])
		} else {
			melo2 = append(melo2, melo[i]+"_")
		}
	}
	return melo2
}

func Digitize(n int) []int {
	if n == 0 {
		return []int{0}
	}

	var digits []int
	for n > 0 {
		digits = append(digits, n%10)
		n /= 10
	}

	return digits
}
func contar() {
	mapa := make(map[int]int)
	papas := []int{2, 3, 5, 3, 7, 9, 5, 3, 7}

	for _, v := range papas {
		mapa[v]++
	}

	fmt.Println(mapa)
}

func Vaporcode(s string) string {

	hola := strings.Split(strings.Trim(s, " "), " ")
	mensaje := ""
	if s == "" {
		return ""
	}
	for _, v := range hola {

		for _, j := range v {
			mensaje += string(j)
		}
		mensaje += " "
	}
	fmt.Println(strings.ToUpper(mensaje))
	return strings.ToUpper(mensaje)
}
func CamelCase(s string) string {
	hola := strings.Split(strings.Trim(s, " "), " ")
	mensaje := ""
	if s == "" {
		return ""
	}
	for _, v := range hola {

		mensaje += strings.ToUpper(string(v[0]))
		mensaje += string(v[1:])
	}
	fmt.Println(hola)
	return mensaje // your code here
}

func DecodeMorse(morse string) string {
	// Mapa morse -> letra
	reverseMorse := map[string]string{
		".-":   "A",
		"-...": "B",
		"-.-.": "C",
		"-..":  "D",
		".":    "E",
		"..-.": "F",
		"--.":  "G",
		"....": "H",
		"..":   "I",
		".---": "J",
		"-.-":  "K",
		".-..": "L",
		"--":   "M",
		"-.":   "N",
		"---":  "O",
		".--.": "P",
		"--.-": "Q",
		".-.":  "R",
		"...":  "S",
		"-":    "T",
		"..-":  "U",
		"...-": "V",
		".--":  "W",
		"-..-": "X",
		"-.--": "Y",
		"--..": "Z",
	}

	morse = strings.TrimSpace(morse)
	words := strings.Split(morse, "   ")

	var resultWords []string

	for _, word := range words {
		letters := strings.Split(word, " ")
		decodedWord := ""

		for _, code := range letters {
			if letter, exists := reverseMorse[code]; exists {
				decodedWord += letter
			}
		}

		resultWords = append(resultWords, decodedWord)
	}

	fmt.Println(strings.Join(resultWords, " "))
	return strings.Join(resultWords, " ")
}
