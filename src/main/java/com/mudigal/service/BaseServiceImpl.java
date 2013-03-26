package com.mudigal.service;

import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mudigal.model.Word;


/***************************************
 * 
 * @author: Vijayendra Mudigal
 * @email: vijayendrap@gmail.com
 * 
***************************************/

@Service("baseService")
public class BaseServiceImpl {
	
	@Resource(name="dictionaryService")
	private DictionaryServiceImpl dictionaryService;
		
	/**
	 * Uses Depth First Search algorithm to traverse through the 
	 * two dimensional matrix to find out all possible words for 
	 * Scramble with Friends Hack.
	 */
	public List<String> getAllWords(String[][] board) {
		Set<String> wordsFound = new HashSet<String>();
		Set<String> dictionary = dictionaryService.getWords();
		Set<String> allPossibleWords = new HashSet<String>();

		for (int i = 0; i < 4; i++) {
			for (int j = 0; j < 4; j++) {

				List<String> currentPath = new LinkedList<String>();
				currentPath.add(i + "" + j);
				LinkedList<Word> queue = new LinkedList<Word>();
				Word word = new Word();
				word.setiPos(i);
				word.setjPos(j);
				word.setPath(currentPath);
				String sb = new String(board[i][j]);
				word.setWord(sb);
				queue.add(word);
				permuteWords(board, allPossibleWords, queue, word.getPath());
			}
		}
		for(String allPossibleWord : allPossibleWords) {
			if(dictionary.contains(allPossibleWord)){
				wordsFound.add(allPossibleWord);
			}
		}
		List<String> wordsFoundList = new LinkedList<String>();
		for(String wordFound : wordsFound){
			wordsFoundList.add(wordFound);
		}
		Collections.sort(wordsFoundList, new LengthComparator());
		
		return wordsFoundList;
	}

	private static void permuteWords(String[][] board,
			Set<String> allPossibleWords, LinkedList<Word> queue,
			List<String> currentPath) {
		
		if (!queue.isEmpty()) {
			
			Word wordFromQueue = queue.removeFirst();
			int i = wordFromQueue.getiPos();
			int j = wordFromQueue.getjPos();

			if (j < 3) {
				addToQueue(board, wordFromQueue.getWord(), i, j + 1,
						wordFromQueue.getPath(), queue);
				if (i > 0) {
					addToQueue(board, wordFromQueue.getWord(), i - 1, j + 1,
							wordFromQueue.getPath(), queue);
				}
			}

			if (i < 3) {
				addToQueue(board, wordFromQueue.getWord(), i + 1, j,
						wordFromQueue.getPath(), queue);
				if (j < 3) {
					addToQueue(board, wordFromQueue.getWord(), i + 1, j + 1,
							wordFromQueue.getPath(), queue);
				}
			}

			if (j > 0) {
				addToQueue(board, wordFromQueue.getWord(), i, j - 1,
						wordFromQueue.getPath(), queue);
				if (i < 3) {
					addToQueue(board, wordFromQueue.getWord(), i + 1, j - 1,
							wordFromQueue.getPath(), queue);
				}
			}

			if (i > 0) {
				addToQueue(board, wordFromQueue.getWord(), i - 1, j,
						wordFromQueue.getPath(), queue);
				if (j > 0) {
					addToQueue(board, wordFromQueue.getWord(), i - 1, j - 1,
							wordFromQueue.getPath(), queue);
				}
			}

			int wordLength = wordFromQueue.getWord().length();
			if (wordLength > 2) {
				allPossibleWords.add(wordFromQueue.getWord().toString());
			}
			if (wordLength < 7) {
				permuteWords(board, allPossibleWords, queue,
						wordFromQueue.getPath());
			}
		}

	}

	private static void addToQueue(String[][] board, String sb, int i, int j,
			List<String> currentPath, LinkedList<Word> queue) {
		if (!currentPath.contains(i + "" + j)) {
			Word word = getWord(board, sb, i, j, currentPath);
			if (word.getWord().length() < 7) {
				queue.addLast(word);
			}
		}

	}

	private static Word getWord(String[][] board, String sb, int i, int j,
			List<String> currentPath) {
		Word word = new Word();
		String newSb = sb + board[i][j];
		word.setWord(newSb);
		List<String> newPath = new LinkedList<String>();
		newPath.addAll(currentPath);
		newPath.add(i + "" + j);
		word.setPath(newPath);
		word.setiPos(i);
		word.setjPos(j);
		return word;
	}
	
	public static class LengthComparator implements Comparator<String> {
	    public int compare(String s1, String s2) {return s2.length() - s1.length();}
	}

	/**
	 * Uses Johnson-Trotter algorithm to traverse through the
	 * two dimensional matrix to find out all possible words 
	 * for Words with Friends Hack.
	 */
	public Set<String> getAllWords(String[] board) {
		Set<String> allPossibleWords = new HashSet<String>();
		return allPossibleWords;
	}
}
